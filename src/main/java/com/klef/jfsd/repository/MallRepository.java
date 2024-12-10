package com.klef.jfsd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.model.Mall;

@Repository
public interface MallRepository extends CrudRepository<Mall, Integer> 
{
	@Query("select m from Mall m where m.city=:cityname")
	public List<Mall> viewmallsincity(@Param("cityname") String cityname);
	
}
