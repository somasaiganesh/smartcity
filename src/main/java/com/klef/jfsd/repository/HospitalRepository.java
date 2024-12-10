package com.klef.jfsd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.model.Hospital;

@Repository
public interface HospitalRepository extends JpaRepository<Hospital, Integer> 
{
	@Query("select h from Hospital h where h.city=:cityname")
	public List<Hospital> viewallhospitalsincity(@Param("cityname")  String cityname); 
}
