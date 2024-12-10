package com.klef.jfsd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.model.Education;

@Repository
public interface EducationRepository extends CrudRepository<Education, Integer> 
{
	@Query("select e from Education e where e.city=:cityname")
	public List<Education> viewEducationsInCity(@Param("cityname") String cityname);

}
