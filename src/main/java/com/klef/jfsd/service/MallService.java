package com.klef.jfsd.service;

import java.util.List;

import com.klef.jfsd.model.Mall;

public interface MallService {
	public String addmall(Mall mall);
	public List<Mall> viewallmalls();
	public List<Mall> viewmallsincity(String cityname);
	public Mall viewmallbyid(int id);
	public void deletemallbyid(int id);
}
