package com.klef.jfsd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.model.Hotel;

@Repository
public interface HotelRepository extends CrudRepository<Hotel, Integer>
{
	@Query("select h from Hotel h where h.city=:cityName")
	public List<Hotel> viewallhotelsincity(@Param("cityName") String cityName);

}
