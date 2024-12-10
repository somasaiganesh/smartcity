package com.klef.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.TouristAttractions;
import com.klef.jfsd.repository.TouristAttractionsRepository;

@Service
public class TouristAttractionsServiceImpl implements TouristAttractionsService
{
	
	@Autowired
	private TouristAttractionsRepository touristAttractionsRepository;

	@Override
	public String insert(TouristAttractions ta) {
		touristAttractionsRepository.save(ta) ;
		return "Tourist Attractions Added Successfully";
	}

	@Override
	public List<TouristAttractions> viewalltouristattractions() {
		return (List<TouristAttractions>)touristAttractionsRepository.findAll();
	}

	@Override
	public TouristAttractions viewtouristattractionsbyid(int id) {
		return touristAttractionsRepository.findById(id).get();
	}

	@Override
	public TouristAttractions viewtouristattractionsincity(String cityname) {
		return touristAttractionsRepository.viewtouristattractionsincity(cityname);
	}

	@Override
	public String updatetouristattractions(TouristAttractions ta) {
		
		TouristAttractions t = touristAttractionsRepository.findById(ta.getId()).get();
		
		t.setCity(ta.getCity());
		t.setCentralimg(ta.getCentralimg());
		
		t.setTaimg1(ta.getTaimg1());
		t.setTaname1(ta.getTaname1());
		t.setTadesc1(ta.getTadesc1());
		t.setTalink1(ta.getTalink1());
		
		t.setTaimg2(ta.getTaimg2());
		t.setTaname2(ta.getTaname2());
		t.setTadesc2(ta.getTadesc2());
		t.setTalink2(ta.getTalink2());
		
		t.setTaimg3(ta.getTaimg3());
		t.setTaname3(ta.getTaname3());
		t.setTadesc3(ta.getTadesc3());
		t.setTalink3(ta.getTalink3());
		
		t.setTaimg4(ta.getTaimg4());
		t.setTaname4(ta.getTaname4());
		t.setTadesc4(ta.getTadesc4());
		t.setTalink4(ta.getTalink4());
		
		t.setTaimg5(ta.getTaimg5());
		t.setTaname5(ta.getTaname5());
		t.setTadesc5(ta.getTadesc5());
		t.setTalink5(ta.getTalink5());
		
		t.setTaimg6(ta.getTaimg6());
		t.setTaname6(ta.getTaname6());
		t.setTadesc6(ta.getTadesc6());
		t.setTalink6(ta.getTalink6());
		
		touristAttractionsRepository.save(t);		
		return "Tourist Attraction Details Updated Successfully";
		
	}
	
}
