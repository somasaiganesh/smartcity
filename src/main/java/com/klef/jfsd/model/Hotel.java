package com.klef.jfsd.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "hotel_table")
public class Hotel 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name="city",length = 50)
	private String city;	
	@Column(name = "hotel_name", length = 30)
	private String name;
	@Column(name = "hotel_description", length = 500)
	private String description;
	@Column(name = "hotel_phone", length = 20)
	private String phone;
	@Column(name = "hotel_email", length = 40)
	private String email;
	@Column(name = "hotel_link", length = 300)
	private String link;
	private Blob hotelimage;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public Blob getHotelimage() {
		return hotelimage;
	}
	public void setHotelimage(Blob hotelimage) {
		this.hotelimage = hotelimage;
	}	

}
