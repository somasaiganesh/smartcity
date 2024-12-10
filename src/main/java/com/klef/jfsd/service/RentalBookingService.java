package com.klef.jfsd.service;

import java.util.List;

import com.klef.jfsd.model.RentalBookings;

public interface RentalBookingService {
	
	public String addbooking(RentalBookings rb);
	public List<RentalBookings> viewallrentalbookings();
	public List<RentalBookings> getDetailsByEmail(String email);
}
