package com.klef.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.AboutCity;
import com.klef.jfsd.repository.AboutCityRepository;

@Service
public class AboutCityServiceImpl implements AboutCityService
{
	@Autowired
	private AboutCityRepository aboutCityRepository;

	@Override
	public String addaboutcity(AboutCity ac) {
		aboutCityRepository.save(ac);
		return "About the City Added Successfully";
	}

	@Override
	public AboutCity viewaboutcitybyid(int id) {
		return aboutCityRepository.findById(id).get();
	}

	@Override
	public List<AboutCity> viewallaboutcity() {
		return (List<AboutCity>)aboutCityRepository.findAll();
	}

	@Override
	public AboutCity viewaboutparticularcity(String city) {
		return aboutCityRepository.viewAboutofParticularCity(city);
	}

	@Override
	public String updateAboutCity(AboutCity ac) {
		
		AboutCity abc = aboutCityRepository.findById(ac.getId()).get();
		abc.setCity(ac.getCity());
		abc.setCityImage(ac.getCityImage());
		abc.setCname(ac.getCname());
		abc.setDescription(ac.getDescription());
		abc.setCultureDescription(ac.getCultureDescription());
		abc.setCultureImage(ac.getCultureImage());
		abc.setFamousfoodimg1(ac.getFamousfoodimg1());
		abc.setFamousfoodimg2(ac.getFamousfoodimg2());
		abc.setFamousfoodimg3(ac.getFamousfoodimg3());
		abc.setFamousfoodimg4(ac.getFamousfoodimg4());
		abc.setFamousfoodimg5(ac.getFamousfoodimg5());
		abc.setFamousfoodimg6(ac.getFamousfoodimg6());
		abc.setFestivalimg1(ac.getFestivalimg1());
		abc.setFestivalimg2(ac.getFestivalimg2());
		abc.setFestivalimg3(ac.getFestivalimg3());
		
		abc.setGalleryimg1(ac.getGalleryimg1());
		abc.setGalleryimg2(ac.getGalleryimg2());
		abc.setGalleryimg2(ac.getGalleryimg3());
		abc.setMaplink(ac.getMaplink());
		abc.setPoliticsDescription(ac.getPoliticsDescription());
		abc.setPoliticsimage(ac.getPoliticsimage());
		aboutCityRepository.save(abc);
		return "About City Details Updated Successfully";
	}

}
