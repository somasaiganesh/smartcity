package com.klef.jfsd.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "hospital_table")
public class Hospital 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	private int id;
	@Column(name="city",length = 50)
	private String city;	
	@Column(name = "hospital_name",length = 30)
	private String name;
	@Column(name = "hospital_description",length = 300)
	private String description;
	@Column(name = "hospital_address",length = 100)
	private String address;
	@Column(name = "hospital_phone",length = 20)
	private String phone;
	@Column(name = "hospital_email",length = 30)
	private String email;
	@Column(name = "hospital_balink",length = 400)
	private String balink;
	@Column(name = "hospital_dlink",length = 400)
	private String dlink;	
	private Blob hospitalimage;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public String getBalink() {
		return balink;
	}
	public void setBalink(String balink) {
		this.balink = balink;
	}
	public String getDlink() {
		return dlink;
	}
	public void setDlink(String dlink) {
		this.dlink = dlink;
	}
	public Blob getHospitalimage() {
		return hospitalimage;
	}
	public void setHospitalimage(Blob hospitalimage) {
		this.hospitalimage = hospitalimage;
	}
	@Override
	public String toString() {
		return "Hospital [id=" + id + ", name=" + name + ", description=" + description + ", address=" + address
				+ ", phone=" + phone + ", email=" + email + ", balink=" + balink + ", dlink=" + dlink
				+ ", hospitalimage=" + hospitalimage + "]";
	}
}
