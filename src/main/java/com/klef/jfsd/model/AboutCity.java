package com.klef.jfsd.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "aboutcity_table")
public class AboutCity 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(length = 100,nullable = false)
	private String city;

	@Column(length = 250,nullable = false)
	private String cname;
	
	private Blob cityImage;
	
	@Column(length=1000,nullable=false)
	private String description;
	
	private Blob cultureImage;
	
	@Column(length = 1000,nullable = false)
	private String cultureDescription;
	
	private Blob festivalimg1;
	private Blob festivalimg2;
	private Blob festivalimg3;
	
	private Blob famousfoodimg1;
	private Blob famousfoodimg2;
	private Blob famousfoodimg3;
	private Blob famousfoodimg4;
	private Blob famousfoodimg5;
	private Blob famousfoodimg6;
	
	private Blob galleryimg1;
	private Blob galleryimg2;
	private Blob galleryimg3;
	
	private Blob politicsimage;
	
	@Column(length=1000,nullable = false)
	private String politicsDescription;
	
	@Column(length = 1000,nullable = false)
	private String maplink;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public Blob getCityImage() {
		return cityImage;
	}

	public void setCityImage(Blob cityImage) {
		this.cityImage = cityImage;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Blob getCultureImage() {
		return cultureImage;
	}

	public void setCultureImage(Blob cultureImage) {
		this.cultureImage = cultureImage;
	}

	public String getCultureDescription() {
		return cultureDescription;
	}

	public void setCultureDescription(String cultureDescription) {
		this.cultureDescription = cultureDescription;
	}

	public Blob getFestivalimg1() {
		return festivalimg1;
	}

	public void setFestivalimg1(Blob festivalimg1) {
		this.festivalimg1 = festivalimg1;
	}

	public Blob getFestivalimg2() {
		return festivalimg2;
	}

	public void setFestivalimg2(Blob festivalimg2) {
		this.festivalimg2 = festivalimg2;
	}

	public Blob getFestivalimg3() {
		return festivalimg3;
	}

	public void setFestivalimg3(Blob festivalimg3) {
		this.festivalimg3 = festivalimg3;
	}

	public Blob getFamousfoodimg1() {
		return famousfoodimg1;
	}

	public void setFamousfoodimg1(Blob famousfoodimg1) {
		this.famousfoodimg1 = famousfoodimg1;
	}

	public Blob getFamousfoodimg2() {
		return famousfoodimg2;
	}

	public void setFamousfoodimg2(Blob famousfoodimg2) {
		this.famousfoodimg2 = famousfoodimg2;
	}

	public Blob getFamousfoodimg3() {
		return famousfoodimg3;
	}
	
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public void setFamousfoodimg3(Blob famousfoodimg3) {
		this.famousfoodimg3 = famousfoodimg3;
	}

	public Blob getFamousfoodimg4() {
		return famousfoodimg4;
	}

	public void setFamousfoodimg4(Blob famousfoodimg4) {
		this.famousfoodimg4 = famousfoodimg4;
	}

	public Blob getFamousfoodimg5() {
		return famousfoodimg5;
	}

	public void setFamousfoodimg5(Blob famousfoodimg5) {
		this.famousfoodimg5 = famousfoodimg5;
	}

	public Blob getFamousfoodimg6() {
		return famousfoodimg6;
	}

	public void setFamousfoodimg6(Blob famousfoodimg6) {
		this.famousfoodimg6 = famousfoodimg6;
	}

	public Blob getGalleryimg1() {
		return galleryimg1;
	}

	public void setGalleryimg1(Blob galleryimg1) {
		this.galleryimg1 = galleryimg1;
	}

	public Blob getGalleryimg2() {
		return galleryimg2;
	}

	public void setGalleryimg2(Blob galleryimg2) {
		this.galleryimg2 = galleryimg2;
	}

	public Blob getGalleryimg3() {
		return galleryimg3;
	}

	public void setGalleryimg3(Blob galleryimg3) {
		this.galleryimg3 = galleryimg3;
	}

	public Blob getPoliticsimage() {
		return politicsimage;
	}

	public void setPoliticsimage(Blob politicsimage) {
		this.politicsimage = politicsimage;
	}

	public String getPoliticsDescription() {
		return politicsDescription;
	}

	public void setPoliticsDescription(String politicsDescription) {
		this.politicsDescription = politicsDescription;
	}

	public String getMaplink() {
		return maplink;
	}

	public void setMaplink(String maplink) {
		this.maplink = maplink;
	}

	@Override
	public String toString() {
		return "AboutCity [id=" + id + ", cname=" + cname + ", cityImage=" + cityImage + ", description=" + description
				+ ", cultureImage=" + cultureImage + ", cultureDescription=" + cultureDescription + ", festivalimg1="
				+ festivalimg1 + ", festivalimg2=" + festivalimg2 + ", festivalimg3=" + festivalimg3
				+ ", famousfoodimg1=" + famousfoodimg1 + ", famousfoodimg2=" + famousfoodimg2 + ", famousfoodimg3="
				+ famousfoodimg3 + ", famousfoodimg4=" + famousfoodimg4 + ", famousfoodimg5=" + famousfoodimg5
				+ ", famousfoodimg6=" + famousfoodimg6 + ", galleryimg1=" + galleryimg1 + ", galleryimg2=" + galleryimg2
				+ ", galleryimg3=" + galleryimg3 + ", politicsimage=" + politicsimage + ", politicsDescription="
				+ politicsDescription + ", maplink=" + maplink + "]";
	}
	

}
