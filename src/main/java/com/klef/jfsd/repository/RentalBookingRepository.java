package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.model.RentalBookings;
import java.util.*;
@Repository

public interface RentalBookingRepository extends JpaRepository<RentalBookings, Integer>{
	
	@Query("select rb from RentalBookings rb where rb.email=:email ")
	public 	List<RentalBookings> findbyemail(@Param("email") String email);
}
