package com.klef.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Mall;
import com.klef.jfsd.repository.MallRepository;

@Service
public class MallServiceImpl implements MallService {

	@Autowired
	private MallRepository mallRepository;
	
	@Override
	public String addmall(Mall mall) {
		mallRepository.save(mall);
		return "Mall added successfully";
	}

	@Override
	public List<Mall> viewallmalls() {
		List<Mall> list = (List<Mall>) mallRepository.findAll();
		return list;
	}

	@Override
	public Mall viewmallbyid(int id) {
		return mallRepository.findById(id).get();
	}

	@Override
	public void deletemallbyid(int id) {
		mallRepository.deleteById(id);
	}

	@Override
	public List<Mall> viewmallsincity(String cityname) {
		return mallRepository.viewmallsincity(cityname);
	}

}
