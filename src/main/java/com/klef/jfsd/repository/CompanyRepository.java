package com.klef.jfsd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.model.Company;

@Repository
public interface CompanyRepository extends CrudRepository<Company, Integer>
{
	@Query("select cp from Company cp where cp.city=:cityname")
	public List<Company> viewallcompaniesincity(String cityname);

}
