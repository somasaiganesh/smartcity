package com.klef.jfsd.service;

import java.util.List;

import com.klef.jfsd.model.Hotel;

public interface HotelService 
{
	public String addhotel(Hotel h);
	public List<Hotel> viewallhotels();
	public Hotel viewhotelbyid(int id);
	public List<Hotel> viewallhotelsincity(String cityName); 

}
