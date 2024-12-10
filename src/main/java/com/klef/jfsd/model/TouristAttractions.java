package com.klef.jfsd.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="touristattactions_table")
public class TouristAttractions
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(length = 100,nullable = false)
	private String city;
	
	private Blob centralimg;
	
	private Blob taimg1;
	@Column(length = 500, nullable = false)
	private String taname1;
	@Column(length = 500, nullable = false)
	private String tadesc1;
	@Column(length = 500, nullable = false)
	private String talink1;
	
	private Blob taimg2;
	@Column(length = 500, nullable = false)
	private String taname2;
	@Column(length = 500, nullable = false)
	private String tadesc2;
	@Column(length = 500, nullable = false)
	private String talink2;
	
	private Blob taimg3;
	@Column(length = 500, nullable = false)
	private String taname3;
	@Column(length = 500, nullable = false)
	private String tadesc3;
	@Column(length = 500, nullable = false)
	private String talink3;
	
	private Blob taimg4;
	@Column(length = 500, nullable = false)
	private String taname4;
	@Column(length = 500, nullable = false)
	private String tadesc4;
	@Column(length = 500, nullable = false)
	private String talink4;
	
	private Blob taimg5;
	@Column(length = 500, nullable = false)
	private String taname5;
	@Column(length = 500, nullable = false)
	private String tadesc5;
	@Column(length = 500, nullable = false)
	private String talink5;
	
	
	private Blob taimg6;
	@Column(length = 500, nullable = false)
	private String taname6;
	@Column(length = 500, nullable = false)
	private String tadesc6;
	@Column(length = 500, nullable = false)
	private String talink6;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Blob getCentralimg() {
		return centralimg;
	}
	public void setCentralimg(Blob centralimg) {
		this.centralimg = centralimg;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Blob getTaimg1() {
		return taimg1;
	}
	public void setTaimg1(Blob taimg1) {
		this.taimg1 = taimg1;
	}
	public String getTaname1() {
		return taname1;
	}
	public void setTaname1(String taname1) {
		this.taname1 = taname1;
	}
	public String getTadesc1() {
		return tadesc1;
	}
	public void setTadesc1(String tadesc1) {
		this.tadesc1 = tadesc1;
	}
	public String getTalink1() {
		return talink1;
	}
	public void setTalink1(String talink1) {
		this.talink1 = talink1;
	}
	public Blob getTaimg2() {
		return taimg2;
	}
	public void setTaimg2(Blob taimg2) {
		this.taimg2 = taimg2;
	}
	public String getTaname2() {
		return taname2;
	}
	public void setTaname2(String taname2) {
		this.taname2 = taname2;
	}
	public String getTadesc2() {
		return tadesc2;
	}
	public void setTadesc2(String tadesc2) {
		this.tadesc2 = tadesc2;
	}
	public String getTalink2() {
		return talink2;
	}
	public void setTalink2(String talink2) {
		this.talink2 = talink2;
	}
	public Blob getTaimg3() {
		return taimg3;
	}
	public void setTaimg3(Blob taimg3) {
		this.taimg3 = taimg3;
	}
	public String getTaname3() {
		return taname3;
	}
	public void setTaname3(String taname3) {
		this.taname3 = taname3;
	}
	public String getTadesc3() {
		return tadesc3;
	}
	public void setTadesc3(String tadesc3) {
		this.tadesc3 = tadesc3;
	}
	public String getTalink3() {
		return talink3;
	}
	public void setTalink3(String talink3) {
		this.talink3 = talink3;
	}
	public Blob getTaimg4() {
		return taimg4;
	}
	public void setTaimg4(Blob taimg4) {
		this.taimg4 = taimg4;
	}
	public String getTaname4() {
		return taname4;
	}
	public void setTaname4(String taname4) {
		this.taname4 = taname4;
	}
	public String getTadesc4() {
		return tadesc4;
	}
	public void setTadesc4(String tadesc4) {
		this.tadesc4 = tadesc4;
	}
	public String getTalink4() {
		return talink4;
	}
	public void setTalink4(String talink4) {
		this.talink4 = talink4;
	}
	public Blob getTaimg5() {
		return taimg5;
	}
	public void setTaimg5(Blob taimg5) {
		this.taimg5 = taimg5;
	}
	public String getTaname5() {
		return taname5;
	}
	public void setTaname5(String taname5) {
		this.taname5 = taname5;
	}
	public String getTadesc5() {
		return tadesc5;
	}
	public void setTadesc5(String tadesc5) {
		this.tadesc5 = tadesc5;
	}
	public String getTalink5() {
		return talink5;
	}
	public void setTalink5(String talink5) {
		this.talink5 = talink5;
	}
	public Blob getTaimg6() {
		return taimg6;
	}
	public void setTaimg6(Blob taimg6) {
		this.taimg6 = taimg6;
	}
	public String getTaname6() {
		return taname6;
	}
	public void setTaname6(String taname6) {
		this.taname6 = taname6;
	}
	public String getTadesc6() {
		return tadesc6;
	}
	public void setTadesc6(String tadesc6) {
		this.tadesc6 = tadesc6;
	}
	public String getTalink6() {
		return talink6;
	}
	public void setTalink6(String talink6) {
		this.talink6 = talink6;
	}
	@Override
	public String toString() {
		return "TouristAttractions [id=" + id + ", centralimg=" + centralimg + ", taimg1=" + taimg1 + ", taname1="
				+ taname1 + ", tadesc1=" + tadesc1 + ", talink1=" + talink1 + ", taimg2=" + taimg2 + ", taname2="
				+ taname2 + ", tadesc2=" + tadesc2 + ", talink2=" + talink2 + ", taimg3=" + taimg3 + ", taname3="
				+ taname3 + ", tadesc3=" + tadesc3 + ", talink3=" + talink3 + ", taimg4=" + taimg4 + ", taname4="
				+ taname4 + ", tadesc4=" + tadesc4 + ", talink4=" + talink4 + ", taimg5=" + taimg5 + ", taname5="
				+ taname5 + ", tadesc5=" + tadesc5 + ", talink5=" + talink5 + ", taimg6=" + taimg6 + ", taname6="
				+ taname6 + ", tadesc6=" + tadesc6 + ", talink6=" + talink6 + "]";
	}
}
