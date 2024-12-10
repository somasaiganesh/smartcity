package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.klef.jfsd.model.AboutCity;


public interface AboutCityRepository  extends JpaRepository<AboutCity, Integer>  
{
	
	@Query("select abc from AboutCity abc where abc.city=:cityName")
	public AboutCity viewAboutofParticularCity(@Param("cityName") String cityName);
	

}
