package com.klef.jfsd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.model.HotelBookings;
//import com.klef.jfsd.model.RentalBookings;

@Repository
public interface HotelBookingRepository extends JpaRepository<HotelBookings, Integer>
{

	@Query("select hb from HotelBookings hb where hb.email=:email ")
	public 	List<HotelBookings> findbyemail(@Param("email") String email); 
}