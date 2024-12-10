package com.klef.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Contactus;
import com.klef.jfsd.repository.ContactRepository;

@Service
public class ContactServiceImpl implements ContactService
{
	@Autowired
	private ContactRepository contactRepository;

	@Override
	public String insert(Contactus c) {
		contactRepository.save(c);
		return "Your Query has been received & We will get back to you Shortly";
	}

	@Override
	public List<Contactus> viewallcontactus() {
		return  contactRepository.findAll();
}
	
	

}
