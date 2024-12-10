package com.klef.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Hospital;
import com.klef.jfsd.repository.HospitalRepository;

@Service
public class HospitalServiceImpl  implements HospitalService
{
	@Autowired
	private HospitalRepository hospitalRepository;

	@Override
	public String addhospital(Hospital ho) {
		hospitalRepository.save(ho);
		return "Hospital Was Successfully Added";
	}

	@Override
	public List<Hospital> viewallhospitals() {
		return (List<Hospital>) hospitalRepository.findAll();
	}

	@Override
	public Hospital viewhospitalbyid(int id) {
		return hospitalRepository.findById(id).get();
	}

	@Override
	public List<Hospital> viewhospitalsincity(String city) {
		return hospitalRepository.viewallhospitalsincity(city);
	}
	

}
