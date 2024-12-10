package com.klef.jfsd.service;

import com.klef.jfsd.model.Customer;

public interface CustomerService
{ 
  public String addcustomer(Customer c);
  public String updatecustomer(Customer c);
  public Customer viewcustomerbyid(int cid);  
  public Customer checkcustomerlogin(String email,String pwd);
  public Customer checkuseremail(String email);
  public String updatePasswordByEmail(String email, String newPassword);
  
}