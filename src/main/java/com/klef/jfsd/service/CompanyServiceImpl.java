package com.klef.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Company;
import com.klef.jfsd.repository.CompanyRepository;

@Service
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	private CompanyRepository companyRepository;
	
	@Override
	public String addcompany(Company company) {
		companyRepository.save(company);
		return "Company added successfully";
	}

	@Override
	public List<Company> viewallcompanies() {
		List<Company> list = (List<Company>) companyRepository.findAll();
		return list;
	}

	@Override
	public Company viewcompanybyid(int id) {
		return companyRepository.findById(id).get();
	}

	@Override
	public void deletecompanybyid(int id) {
		companyRepository.deleteById(id);
		
	}

	@Override
	public List<Company> viewallcompaniesincity(String cityname) {
		return companyRepository.viewallcompaniesincity(cityname);
	}

}
