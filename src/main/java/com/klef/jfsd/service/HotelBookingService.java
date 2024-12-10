package com.klef.jfsd.service;

import java.util.List;

import com.klef.jfsd.model.HotelBookings;
import com.klef.jfsd.model.RentalBookings;

public interface HotelBookingService {
  public String addbooking(HotelBookings hb);
  public List<HotelBookings> viewallhotelbookings();
	public List<HotelBookings> getDetailsByEmail(String email);

}