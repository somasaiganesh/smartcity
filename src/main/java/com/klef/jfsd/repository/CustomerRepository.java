	package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.model.Customer;


@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> 
{
  
  @Query("select c from Customer c where c.email=?1 and c.password=?2")
   public Customer  checkcustomerlogin(String email,String pwd);
  
//  @Query("select c from Customer c where c.email=:emailid")
//  public Customer checkuseremail(@Param("emailid") String emailid);
  
  @Query("select c from Customer c where c.email=?1")
  public Customer checkuseremail(String email);
}