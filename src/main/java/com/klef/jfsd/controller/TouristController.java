package com.klef.jfsd.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.model.City;
import com.klef.jfsd.model.TouristAttractions;
import com.klef.jfsd.service.TouristAttractionsService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class TouristController 
{
	
	@Autowired
	private TouristAttractionsService touristAttractionsService;
	
	@PostMapping("inserttouristattractions")
	public ModelAndView inserttouristattraction(HttpServletRequest request, @RequestParam("citycentralimage") MultipartFile file,
			@RequestParam("touristattractionimg1") MultipartFile file1,
			@RequestParam("touristattractionimg2") MultipartFile file2,
			@RequestParam("touristattractionimg3") MultipartFile file3,
			@RequestParam("touristattractionimg4") MultipartFile file4,
			@RequestParam("touristattractionimg5") MultipartFile file5,
			@RequestParam("touristattractionimg6") MultipartFile file6) 
			throws IOException, SerialException, SQLException{
		ModelAndView mv = new ModelAndView();
		String msg = null;
		try {
			String city = request.getParameter("cityname");
			
			String touristattractionname1 = request.getParameter("touristattractionname1");
			String touristattractiondesc1 = request.getParameter("touristattractiondesc1");
			String touristattractionlink1 = request.getParameter("touristattractionlink1");
			
			String touristattractionname2 = request.getParameter("touristattractionname2");
			String touristattractiondesc2 = request.getParameter("touristattractiondesc2");
			String touristattractionlink2 = request.getParameter("touristattractionlink2");
			
			String touristattractionname3 = request.getParameter("touristattractionname3");
			String touristattractiondesc3 = request.getParameter("touristattractiondesc3");
			String touristattractionlink3 = request.getParameter("touristattractionlink3");

			String touristattractionname4 = request.getParameter("touristattractionname4");
			String touristattractiondesc4 = request.getParameter("touristattractiondesc4");
			String touristattractionlink4 = request.getParameter("touristattractionlink4");
			
			String touristattractionname5 = request.getParameter("touristattractionname5");
			String touristattractiondesc5 = request.getParameter("touristattractiondesc5");
			String touristattractionlink5 = request.getParameter("touristattractionlink5");
			
			String touristattractionname6 = request.getParameter("touristattractionname6");
			String touristattractiondesc6 = request.getParameter("touristattractiondesc6");
			String touristattractionlink6 = request.getParameter("touristattractionlink6");
			
			byte[] bytes = file.getBytes();
			Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
			
			byte[] bytes1 = file1.getBytes();
			Blob blob1 = new javax.sql.rowset.serial.SerialBlob(bytes1);
			
			byte[] bytes2 = file2.getBytes();
			Blob blob2 = new javax.sql.rowset.serial.SerialBlob(bytes2);
			
			byte[] bytes3 = file3.getBytes();
			Blob blob3 = new javax.sql.rowset.serial.SerialBlob(bytes3);
			
			byte[] bytes4 = file4.getBytes();
			Blob blob4 = new javax.sql.rowset.serial.SerialBlob(bytes4);
			
			byte[] bytes5 = file5.getBytes();
			Blob blob5 = new javax.sql.rowset.serial.SerialBlob(bytes5);
			
			byte[] bytes6 = file6.getBytes();
			Blob blob6 = new javax.sql.rowset.serial.SerialBlob(bytes6);
			
			
			TouristAttractions ta = new TouristAttractions();
			ta.setCity(city);
			ta.setCentralimg(blob);
			
			ta.setTaimg1(blob1);
			ta.setTaname1(touristattractionname1);
			ta.setTadesc1(touristattractiondesc1);
			ta.setTalink1(touristattractionlink1);
			
			ta.setTaimg2(blob2);
			ta.setTaname2(touristattractionname2);
			ta.setTadesc2(touristattractiondesc2);
			ta.setTalink2(touristattractionlink2);
			
			ta.setTaimg3(blob3);
			ta.setTaname3(touristattractionname3);
			ta.setTadesc3(touristattractiondesc3);
			ta.setTalink3(touristattractionlink3);
			
			ta.setTaimg4(blob4);
			ta.setTaname4(touristattractionname4);
			ta.setTadesc4(touristattractiondesc4);
			ta.setTalink4(touristattractionlink4);
			
			ta.setTaimg5(blob5);
			ta.setTaname5(touristattractionname5);
			ta.setTadesc5(touristattractiondesc5);
			ta.setTalink5(touristattractionlink5);
			
			ta.setTaimg6(blob6);
			ta.setTaname6(touristattractionname6);
			ta.setTadesc6(touristattractiondesc6);
			ta.setTalink6(touristattractionlink6);
			
			msg = touristAttractionsService.insert(ta);
			mv.setViewName("addtouristattractions");
			mv.addObject("message",msg);
//			System.out.println(msg);
			
			
		}
		catch(Exception e) {
			msg = e.getMessage();
			mv.setViewName("addtouristattractions");
			mv.addObject("message", msg);
			System.out.println(msg);
		}
		return mv;
	}
	
	@GetMapping("displaycentralimage")
	public ResponseEntity<byte[]> displaycentralimage(@RequestParam("id") int id) throws IOException, SQLException {
		TouristAttractions ta = touristAttractionsService.viewtouristattractionsbyid(id);
		byte[] imageBytes = null;
		imageBytes = ta.getCentralimg().getBytes(1, (int) ta.getCentralimg().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_PNG).body(imageBytes);
	}
	
	@GetMapping("touristattractionimg1")
	public ResponseEntity<byte[]> touristattractionimg1(@RequestParam("id") int id) throws IOException, SQLException {
		TouristAttractions ta = touristAttractionsService.viewtouristattractionsbyid(id);
		byte[] imageBytes = null;
		imageBytes = ta.getTaimg1().getBytes(1, (int) ta.getTaimg1().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_PNG).body(imageBytes);
	}
	
	@GetMapping("touristattractionimg2")
	public ResponseEntity<byte[]> touristattractionimg2(@RequestParam("id") int id) throws IOException, SQLException {
		TouristAttractions ta = touristAttractionsService.viewtouristattractionsbyid(id);
		byte[] imageBytes = null;
		imageBytes = ta.getTaimg2().getBytes(1, (int) ta.getTaimg2().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_PNG).body(imageBytes);
	}
	
	@GetMapping("touristattractionimg3")
	public ResponseEntity<byte[]> touristattractionimg3(@RequestParam("id") int id) throws IOException, SQLException {
		TouristAttractions ta = touristAttractionsService.viewtouristattractionsbyid(id);
		byte[] imageBytes = null;
		imageBytes = ta.getTaimg3().getBytes(1, (int) ta.getTaimg3().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_PNG).body(imageBytes);
	}
	
	@GetMapping("touristattractionimg4")
	public ResponseEntity<byte[]> touristattractionimg4(@RequestParam("id") int id) throws IOException, SQLException {
		TouristAttractions ta = touristAttractionsService.viewtouristattractionsbyid(id);
		byte[] imageBytes = null;
		imageBytes = ta.getTaimg4().getBytes(1, (int) ta.getTaimg4().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_PNG).body(imageBytes);
	}
	
	@GetMapping("touristattractionimg5")
	public ResponseEntity<byte[]> touristattractionimg5(@RequestParam("id") int id) throws IOException, SQLException {
		TouristAttractions ta = touristAttractionsService.viewtouristattractionsbyid(id);
		byte[] imageBytes = null;
		imageBytes = ta.getTaimg5().getBytes(1, (int) ta.getTaimg5().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_PNG).body(imageBytes);
	}
	
	@GetMapping("touristattractionimg6")
	public ResponseEntity<byte[]> touristattractionimg6(@RequestParam("id") int id) throws IOException, SQLException {
		TouristAttractions ta = touristAttractionsService.viewtouristattractionsbyid(id);
		byte[] imageBytes = null;
		imageBytes = ta.getTaimg6().getBytes(1, (int) ta.getTaimg6().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_PNG).body(imageBytes);
	}
	
	@GetMapping("viewalltouristattractions")
	public ModelAndView viewalltouristattractions(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		if (request.getSession().getAttribute("user") == null) {
	        // If not logged in, redirect to adminlogin
	        return new ModelAndView("redirect:/adminlogin");
	    }
		mv.setViewName("viewalltouristattractions");

		List<TouristAttractions> talist = touristAttractionsService.viewalltouristattractions();
		mv.addObject("talist", talist);
		return mv;
	}
	
	

}
