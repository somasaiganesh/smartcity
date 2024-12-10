package com.klef.jfsd.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Customer;
import com.klef.jfsd.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerRepository customerRepository;

	@Override
	public String addcustomer(Customer c) {
		customerRepository.save(c);
		return "Enter OTP We Sent to Your Mail for Account Confirmation";
	}

	@Override
	public String updatecustomer(Customer c) {
		Customer e = customerRepository.findById(c.getId()).get();

		e.setName(c.getName());
		e.setUsername(c.getUsername());
		e.setEmail(c.getEmail());
		e.setGender(c.getGender());
		e.setDob(c.getDob());
		e.setPassword(c.getPassword());
		e.setContactno(c.getContactno());
		e.setAddress(c.getAddress());

		// Check if a new profile image is provided

		customerRepository.save(e);

		return "Customer Updated Successfully";
	}

	@Override
	public Customer checkcustomerlogin(String email, String pwd) {
		return customerRepository.checkcustomerlogin(email, pwd);
	}

	@Override
	public Customer viewcustomerbyid(int cid) {
		Optional<Customer> obj = customerRepository.findById(cid);

		if (obj.isPresent()) {
			Customer c = obj.get();

			return c;
		} else {
			return null;
		}
	}
	
	@Override
	  public Customer checkuseremail(String email) {
	    return customerRepository.checkuseremail(email);
	  }

	    @Override
	      public String updatePasswordByEmail(String email, String newPassword) {
	          Customer customer = customerRepository.checkuseremail(email);
	          if (customer != null) {
	              customer.setPassword(newPassword);
	              customerRepository.save(customer);
	              return "Customer Updated Successfully";
	          } else {
	              return "Customer with provided email not found";
	          }
	      }
}