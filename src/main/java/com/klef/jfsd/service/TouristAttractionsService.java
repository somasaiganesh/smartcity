package com.klef.jfsd.service;

import java.util.List;

import com.klef.jfsd.model.TouristAttractions;

public interface TouristAttractionsService
{
	public String insert(TouristAttractions ta);
	public List<TouristAttractions> viewalltouristattractions();
	public TouristAttractions viewtouristattractionsbyid(int id);
	public TouristAttractions viewtouristattractionsincity(String cityname);
	public String updatetouristattractions(TouristAttractions ta);

}
