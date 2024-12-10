package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.model.TouristAttractions;

@Repository
public interface TouristAttractionsRepository extends JpaRepository<TouristAttractions,Integer> 
{
	
	@Query("select ta from TouristAttractions ta where ta.city=:cityname")
	public TouristAttractions viewtouristattractionsincity(@Param("cityname") String cityname);
	
}
