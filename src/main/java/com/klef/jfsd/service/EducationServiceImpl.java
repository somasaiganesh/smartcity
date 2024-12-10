package com.klef.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Education;
import com.klef.jfsd.repository.EducationRepository;

@Service
public class EducationServiceImpl implements EducationService {

	@Autowired
	private EducationRepository educationRepository;
	
	@Override
	public String addeducation(Education education) {
		educationRepository.save(education);
		return "Education institution Added successfully";
	}

	@Override
	public List<Education> viewalleducations() {
		List<Education> list = (List<Education>) educationRepository.findAll();
		return list;
	}

	@Override
	public Education vieweducationbyid(int id) {
		return educationRepository.findById(id).get();
	}

	@Override
	public void deleteeducationbyid(int id) {
		educationRepository.deleteById(id);
		
	}

	@Override
	public List<Education> vieweducationincity(String cityname) {
		return educationRepository.viewEducationsInCity(cityname);
	}

}
