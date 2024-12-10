package com.klef.jfsd.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.model.AboutCity;
import com.klef.jfsd.model.City;
import com.klef.jfsd.service.AboutCityService;
import com.klef.jfsd.service.AdminService;
import com.klef.jfsd.service.CityService;
import com.klef.jfsd.service.CompanyService;
import com.klef.jfsd.service.ContactService;
import com.klef.jfsd.service.CustomerService;
import com.klef.jfsd.service.EducationService;
import com.klef.jfsd.service.EmailService;
import com.klef.jfsd.service.HospitalService;
import com.klef.jfsd.service.HotelBookingService;
import com.klef.jfsd.service.HotelService;
import com.klef.jfsd.service.MallService;
import com.klef.jfsd.service.RentalBookingService;
import com.klef.jfsd.service.RestaurantService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class DemoController {
	@Autowired
	CustomerService customerService;
	
	@Autowired
	private CityService cityService;

	@Autowired
	private AdminService adminService;

	@Autowired
	private EducationService educationService;

	@Autowired
	private EmailService emailService;

	@Autowired
	private RentalBookingService rentalBookingService;

	@Autowired
	private ContactService contactService;

	@Autowired
	private HotelBookingService bookingService;

	@Autowired
	private MallService mallService;

	@Autowired
	private CompanyService companyService;

	@Autowired
	private RestaurantService restaurantService;

	@Autowired
	private HotelService hotelService;

	@Autowired
	private HospitalService hospitalService;

	@Autowired
	private AboutCityService aboutCityService;


	@GetMapping("addabout")
	public ModelAndView addabout(HttpServletRequest request) {
		
		if (request.getSession().getAttribute("user") == null) {
	        // If not logged in, redirect to adminlogin
	        return new ModelAndView("redirect:/adminlogin");
	    }
		
		ModelAndView mv = new ModelAndView("addabout");
		List<City> list = cityService.viewallcities();
		mv.addObject("clist", list);	
		System.out.println(list);
		return mv;
	}
	
	@PostMapping("insertabout")
	public ModelAndView insertabout(HttpServletRequest request, @RequestParam("cityimage") MultipartFile file1,
			@RequestParam("cultureimage") MultipartFile file2, @RequestParam("festivalimage1") MultipartFile file3,
			@RequestParam("festivalimage2") MultipartFile file4, @RequestParam("festivalimage3") MultipartFile file5,
			@RequestParam("foodimage1") MultipartFile file6, @RequestParam("foodimage2") MultipartFile file7,
			@RequestParam("foodimage3") MultipartFile file8, @RequestParam("foodimage4") MultipartFile file9,
			@RequestParam("foodimage5") MultipartFile file10, @RequestParam("foodimage6") MultipartFile file11,
			@RequestParam("galleryimage1") MultipartFile file12, @RequestParam("galleryimage2") MultipartFile file13,
			@RequestParam("galleryimage3") MultipartFile file14, @RequestParam("politicsimage") MultipartFile file15) {

		ModelAndView mv = new ModelAndView();
		String msg = null;

		try {
			String city = request.getParameter("cityname");
			String nameofthecitylang = request.getParameter("nameofthecitylang");
			String citydesc = request.getParameter("citydescription");
			String culturedesc = request.getParameter("culturedescription");
			String politicsdesc = request.getParameter("politicsdescription");
			String maplink = request.getParameter("maplink");

			byte[] bytes = file1.getBytes();
			Blob blob1 = new javax.sql.rowset.serial.SerialBlob(bytes);

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

			byte[] bytes7 = file7.getBytes();
			Blob blob7 = new javax.sql.rowset.serial.SerialBlob(bytes7);

			byte[] bytes8 = file8.getBytes();
			Blob blob8 = new javax.sql.rowset.serial.SerialBlob(bytes8);

			byte[] bytes9 = file9.getBytes();
			Blob blob9 = new javax.sql.rowset.serial.SerialBlob(bytes9);

			byte[] bytes10 = file10.getBytes();
			Blob blob10 = new javax.sql.rowset.serial.SerialBlob(bytes10);

			byte[] bytes11 = file11.getBytes();
			Blob blob11 = new javax.sql.rowset.serial.SerialBlob(bytes11);

			byte[] bytes12 = file12.getBytes();
			Blob blob12 = new javax.sql.rowset.serial.SerialBlob(bytes12);

			byte[] bytes13 = file13.getBytes();
			Blob blob13 = new javax.sql.rowset.serial.SerialBlob(bytes13);

			byte[] bytes14 = file14.getBytes();
			Blob blob14 = new javax.sql.rowset.serial.SerialBlob(bytes14);

			byte[] bytes15 = file15.getBytes();
			Blob blob15 = new javax.sql.rowset.serial.SerialBlob(bytes15);

			AboutCity abc = new AboutCity();
			abc.setCity(city);
			abc.setCname(nameofthecitylang);
			abc.setCityImage(blob1);
			abc.setDescription(citydesc);
			abc.setCultureImage(blob2);
			abc.setCultureDescription(culturedesc);

			abc.setFestivalimg1(blob3);
			abc.setFestivalimg2(blob4);
			abc.setFestivalimg3(blob5);

			abc.setFamousfoodimg1(blob6);
			abc.setFamousfoodimg2(blob7);
			abc.setFamousfoodimg3(blob8);
			abc.setFamousfoodimg4(blob9);
			abc.setFamousfoodimg5(blob10);
			abc.setFamousfoodimg6(blob11);

			abc.setGalleryimg1(blob12);
			abc.setGalleryimg2(blob13);
			abc.setGalleryimg3(blob14);

			abc.setPoliticsimage(blob15);
			abc.setPoliticsDescription(politicsdesc);

			abc.setMaplink(maplink);

			msg = aboutCityService.addaboutcity(abc);
			mv.setViewName("addabout");
			mv.addObject("message", msg);
		} catch (Exception e) {
			msg = e.getMessage();
			mv.setViewName("addabout");
			mv.addObject("message", msg);
		}
		return mv;
	}

	@GetMapping("displaycityimage")
	public ResponseEntity<byte[]> displaycityimagedemo(@RequestParam("id") int id) throws IOException, SQLException {
		AboutCity abc = aboutCityService.viewaboutcitybyid(id);
		byte[] imageBytes = null;
		imageBytes = abc.getCityImage().getBytes(1, (int) abc.getCityImage().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}

	@GetMapping("displaycitycultureimage")
	public ResponseEntity<byte[]> displaycitycultureimagedemo(@RequestParam("id") int id)
			throws IOException, SQLException {
		AboutCity abc = aboutCityService.viewaboutcitybyid(id);
		byte[] imageBytes = null;
		imageBytes = abc.getCultureImage().getBytes(1, (int) abc.getCultureImage().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}

	@GetMapping("displaycityfestivalimage1")
	public ResponseEntity<byte[]> displaycityfestivalimage1demo(@RequestParam("id") int id)
			throws IOException, SQLException {
		AboutCity abc = aboutCityService.viewaboutcitybyid(id);
		byte[] imageBytes = null;
		imageBytes = abc.getFestivalimg1().getBytes(1, (int) abc.getFestivalimg1().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}

	@GetMapping("displaycityfestivalimage2")
	public ResponseEntity<byte[]> displaycityfestivalimage2demo(@RequestParam("id") int id)
			throws IOException, SQLException {
		AboutCity abc = aboutCityService.viewaboutcitybyid(id);
		byte[] imageBytes = null;
		imageBytes = abc.getFestivalimg2().getBytes(1, (int) abc.getFestivalimg2().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}

	@GetMapping("displaycityfestivalimage3")
	public ResponseEntity<byte[]> displaycityfestivalimage3demo(@RequestParam("id") int id)
			throws IOException, SQLException {
		AboutCity abc = aboutCityService.viewaboutcitybyid(id);
		byte[] imageBytes = null;
		imageBytes = abc.getFestivalimg3().getBytes(1, (int) abc.getFestivalimg3().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}

	@GetMapping("displayfamousfoodimage1")
	public ResponseEntity<byte[]> displayfamousfoodimage1demo(@RequestParam("id") int id)
			throws IOException, SQLException {
		AboutCity abc = aboutCityService.viewaboutcitybyid(id);
		byte[] imageBytes = null;
		imageBytes = abc.getFamousfoodimg1().getBytes(1, (int) abc.getFamousfoodimg1().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}

	@GetMapping("displayfamousfoodimage2")
	public ResponseEntity<byte[]> displayfamousfoodimage2demo(@RequestParam("id") int id)
			throws IOException, SQLException {
		AboutCity abc = aboutCityService.viewaboutcitybyid(id);
		byte[] imageBytes = null;
		imageBytes = abc.getFamousfoodimg2().getBytes(1, (int) abc.getFamousfoodimg2().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}

	@GetMapping("displayfamousfoodimage3")
	public ResponseEntity<byte[]> displayfamousfoodimage3demo(@RequestParam("id") int id)
			throws IOException, SQLException {
		AboutCity abc = aboutCityService.viewaboutcitybyid(id);
		byte[] imageBytes = null;
		imageBytes = abc.getFamousfoodimg3().getBytes(1, (int) abc.getFamousfoodimg3().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}

	@GetMapping("displayfamousfoodimage4")
	public ResponseEntity<byte[]> displayfamousfoodimage4demo(@RequestParam("id") int id)
			throws IOException, SQLException {
		AboutCity abc = aboutCityService.viewaboutcitybyid(id);
		byte[] imageBytes = null;
		imageBytes = abc.getFamousfoodimg4().getBytes(1, (int) abc.getFamousfoodimg4().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}

	@GetMapping("displayfamousfoodimage5")
	public ResponseEntity<byte[]> displayfamousfoodimage5demo(@RequestParam("id") int id)
			throws IOException, SQLException {
		AboutCity abc = aboutCityService.viewaboutcitybyid(id);
		byte[] imageBytes = null;
		imageBytes = abc.getFamousfoodimg5().getBytes(1, (int) abc.getFamousfoodimg5().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}

	@GetMapping("displayfamousfoodimage6")
	public ResponseEntity<byte[]> displayfamousfoodimage6demo(@RequestParam("id") int id)
			throws IOException, SQLException {
		AboutCity abc = aboutCityService.viewaboutcitybyid(id);
		byte[] imageBytes = null;
		imageBytes = abc.getFamousfoodimg6().getBytes(1, (int) abc.getFamousfoodimg6().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}

	@GetMapping("displaygalleryimage1")
	public ResponseEntity<byte[]> displaygalleryimage1demo(@RequestParam("id") int id)
			throws IOException, SQLException {
		AboutCity abc = aboutCityService.viewaboutcitybyid(id);
		byte[] imageBytes = null;
		imageBytes = abc.getGalleryimg1().getBytes(1, (int) abc.getGalleryimg1().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}

	@GetMapping("displaygalleryimage2")
	public ResponseEntity<byte[]> displaygalleryimage2demo(@RequestParam("id") int id)
			throws IOException, SQLException {
		AboutCity abc = aboutCityService.viewaboutcitybyid(id);
		byte[] imageBytes = null;
		imageBytes = abc.getGalleryimg2().getBytes(1, (int) abc.getGalleryimg2().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}

	@GetMapping("displaygalleryimage3")
	public ResponseEntity<byte[]> displaygalleryimage3demo(@RequestParam("id") int id)
			throws IOException, SQLException {
		AboutCity abc = aboutCityService.viewaboutcitybyid(id);
		byte[] imageBytes = null;
		imageBytes = abc.getGalleryimg3().getBytes(1, (int) abc.getGalleryimg3().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}
	
	@GetMapping("displaypoliticsimage")
	public ResponseEntity<byte[]> displaypoliticsimagedemo(@RequestParam("id") int id)
			throws IOException, SQLException {
		AboutCity abc = aboutCityService.viewaboutcitybyid(id);
		byte[] imageBytes = null;
		imageBytes = abc.getPoliticsimage().getBytes(1, (int) abc.getPoliticsimage().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}

}
