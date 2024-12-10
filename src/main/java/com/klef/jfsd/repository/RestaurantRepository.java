package com.klef.jfsd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.model.Restaurant;

@Repository
public interface RestaurantRepository extends CrudRepository<Restaurant, Integer>
{
	@Query("select r from Restaurant r where r.city=:cityname")
	public List<Restaurant> viewallrestaurantsincity(@Param("cityname") String cityname);

}
