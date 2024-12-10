package com.klef.jfsd.service;

import java.util.List;

import com.klef.jfsd.model.Contactus;

public interface ContactService  
{
	public String insert(Contactus c);
	public List<Contactus> viewallcontactus();

}
