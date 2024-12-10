package com.klef.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Hotel;
import com.klef.jfsd.repository.HotelRepository;

@Service
public class HotelServiceImpl implements HotelService
{
	@Autowired
	private HotelRepository hotelRepository;

	@Override
	public String addhotel(Hotel h) {
		hotelRepository.save(h);
		return "Hotel Added Successfully";
	}

	@Override
	public List<Hotel> viewallhotels() {
		return (List<Hotel>)hotelRepository.findAll();
	}

	@Override
	public Hotel viewhotelbyid(int id) {
		return hotelRepository.findById(id).get();
	}

	@Override
	public List<Hotel> viewallhotelsincity(String cityName) {
		return hotelRepository.viewallhotelsincity(cityName);
	}
}
