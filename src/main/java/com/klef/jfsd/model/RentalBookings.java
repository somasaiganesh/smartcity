package com.klef.jfsd.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "rentalbookings_table")
public class RentalBookings 
{
	@Id
	@Column(name = "rental_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "customer_name",nullable = false,length = 50)
	private String name;
	@Column(name = "customer_number",nullable = false,length = 50)
	private String number;
	@Column(name = "customer_email",nullable = false,length = 50)
	private String email;
	@Column(name = "customer_address",nullable = false,length = 50)
	private String address;
	@Column(name = "rental_vehicle",nullable = false,length = 200)
	private String vehicle;
	@Column(name = "rental_date",nullable = false,length = 20)
	private String date;
	@Column(name = "rental_time",nullable = false,length = 20)
	private String time;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getVehicle() {
		return vehicle;
	}
	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "RentalBookings [id=" + id + ", name=" + name + ", number=" + number + ", email=" + email + ", address="
				+ address + ", vehicle=" + vehicle + ", date=" + date + ", time=" + time + "]";
	}
}
