package com.klef.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.RentalBookings;
import com.klef.jfsd.repository.RentalBookingRepository;

@Service
public class RentalBookingServiceImpl implements RentalBookingService
{
	@Autowired
	RentalBookingRepository bookingRepository;

	@Override
	public String addbooking(RentalBookings rb) {
		bookingRepository.save(rb);
		return "Booking confirmed! Check your email or My Bookings tab for details.";
	}

	@Override
	public List<RentalBookings> viewallrentalbookings() {
		return bookingRepository.findAll();
	}

	@Override
	public List<RentalBookings> getDetailsByEmail(String email) {
		return bookingRepository.findbyemail(email);
	}

}
