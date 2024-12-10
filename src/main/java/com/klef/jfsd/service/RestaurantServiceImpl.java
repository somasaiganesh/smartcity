package com.klef.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Restaurant;
import com.klef.jfsd.repository.RestaurantRepository;

@Service
public class RestaurantServiceImpl implements RestaurantService {

	@Autowired
	private RestaurantRepository restaurantRepository;
	
	@Override
	public String addrestaurant(Restaurant restaurant) {
		restaurantRepository.save(restaurant);
		return "Restaurant added successfully";
	}

	@Override
	public List<Restaurant> viewallrestaurants() {
		List<Restaurant> list = (List<Restaurant>) restaurantRepository.findAll();
		return list;
	}

	@Override
	public Restaurant viewrestaurantbyid(int id) {
		return restaurantRepository.findById(id).get();
	}

	@Override
	public void deleterestaurantbyid(int id) {
		restaurantRepository.deleteById(id);
		
	}

	@Override
	public List<Restaurant> viewallrestaurantsincity(String cityname) {
		return restaurantRepository.viewallrestaurantsincity(cityname);
	}

}
