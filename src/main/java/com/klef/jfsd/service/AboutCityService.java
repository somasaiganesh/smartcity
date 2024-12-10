package com.klef.jfsd.service;

import java.util.List;

import com.klef.jfsd.model.AboutCity;

public interface AboutCityService 
{
	public String addaboutcity(AboutCity ac);
	public List<AboutCity> viewallaboutcity();
	public AboutCity viewaboutcitybyid(int id);
	public AboutCity viewaboutparticularcity(String city);
	public String updateAboutCity(AboutCity ac);
}
