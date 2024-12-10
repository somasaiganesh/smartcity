package com.klef.jfsd.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="hotelbookings_table")
public class HotelBookings {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name="hotel_id")
  private int id;
  
  @Column(name = "customer_name",nullable = false,length=50)
  private String name;
  
  @Column(name="email",nullable=false,length=50)
  private String email;
  
  @Column(name="hotelname",nullable = false,length=50)
  private String hotel;
  
  @Column(name="checkindate",nullable=false,length=50)
  private String checkindate;
  
  @Column(name="checkintime",nullable=false,length=50)
  private String checkintime;
  
  @Column(name="checkoutdate",nullable=false,length=50)
  private String checkoutdate;
  
  @Column(name="checkouttime",nullable=false,length=50)
  private String checkouttime;

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

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getHotel() {
    return hotel;
  }

  public void setHotel(String hotel) {
    this.hotel = hotel;
  }

  public String getCheckindate() {
    return checkindate;
  }

  public void setCheckindate(String checkindate) {
    this.checkindate = checkindate;
  }

  public String getCheckintime() {
    return checkintime;
  }

  public void setCheckintime(String checkintime) {
    this.checkintime = checkintime;
  }

  public String getCheckoutdate() {
    return checkoutdate;
  }

  public void setCheckoutdate(String checkoutdate) {
    this.checkoutdate = checkoutdate;
  }

  public String getCheckouttime() {
    return checkouttime;
  }

  public void setCheckouttime(String checkouttime) {
    this.checkouttime = checkouttime;
  }

  @Override
  public String toString() {
    return "HotelBookings [id=" + id + ", name=" + name + ", email=" + email + ", hotel="
        + hotel + ", checkindate=" + checkindate + ", checkintime=" + checkintime + ", checkoutdate="
        + checkoutdate + ", checkouttime=" + checkouttime + "]";
  }
  
}