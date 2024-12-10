package com.klef.jfsd.service;

import java.util.List;

import com.klef.jfsd.model.Hospital;

public interface HospitalService
{
	public String addhospital(Hospital ho);
	public List<Hospital> viewallhospitals();	
	public Hospital viewhospitalbyid(int id);
	public List<Hospital> viewhospitalsincity(String city);

}
