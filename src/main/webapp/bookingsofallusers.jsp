<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%-- <%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 --%> 
<html> 
<head> 
 
<link type="text/css" rel="stylesheet" href="css/style.css"> 
 
<style> 
 @charset "UTF-8";

* {
   box-sizing: border-box;
}

body
{
  background-color: whitesmoke;
}


ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color: black;
}

li 
{
  float: left;
    border-right: 1px solid blue;
}

li a 
{
  display: block;
  color: white;
 font-size:18px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
}
.active
{
background-color: black;
color: white;
}
li a:hover {
  background-color: orange;
  color: white;
}


.blink {
  animation: blink 1s steps(1, end) infinite;
}

@keyframes blink {
  0% {
    opacity: 1;
  }
  50% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}

.button {
  background-color: black;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

input[type=text],input[type=password],input[type=number],input[type=email],
select,input[type=date],input[type=datetime-local]
{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
}

input[readonly] 
{
            background-color: #f0f0f0; /* Gray background color */
            color: #555; /* Gray text color */
            cursor: not-allowed; /* Change cursor to indicate it's not editable */
}
</style> 
</head> 
<body> 
 
 
<br> 
 
<h3 align="center"><u>View All Hotel Bookings</u></h3> 
 
<table align=center  border=2>  
<tr bgcolor="black" style="color:white"> 
<td>NAME</td> 
<td>CONTACT</td> 
<td>EMAIL</td> 
<td>HOTEL</td> 
<td>CHECKIN DATE</td> 
<td>CHECKIN TIME</td> 
<td>CHECKOUT DATE</td> 
<td>CHECKOUT TIME</td> 
</tr> 
 
<c:forEach items="${blist}"  var="b"> 
<tr> 
<td><c:out value="${b.name}" /></td> 
<td><c:out value="${b.contact}" /></td> 
<td><c:out value="${b.email}" /></td> 
<td><c:out value="${b.hotel}" /></td> 
<td><c:out value="${b.checkindate}" /></td> 
<td><c:out value="${b.checkintime}" /></td> 
<td><c:out value="${b.checkoutdate}" /></td> 
<td><c:out value="${b.checkouttime}" /></td> 

</tr> 
</c:forEach> 
 
</table> 

<h3 align="center"><u>View All Rental Bookings</u></h3> 
 
<table align=center  border=2>  
<tr bgcolor="black" style="color:white"> 
<td>NAME</td> 
<td>CONTACT</td> 
<td>EMAIL</td> 
<td>ADDRESS</td> 
<td>VEHICLE</td> 
<td>DATE</td> 
<td>TIME</td> 
</tr> 
 
<c:forEach items="${rlist}"  var="r"> 
<tr> 
<td><c:out value="${r.name}" /></td> 
<td><c:out value="${r.number}" /></td> 
<td><c:out value="${r.email}" /></td> 
<td><c:out value="${r.address}" /></td> 
<td><c:out value="${r.vehicle}" /></td> 
<td><c:out value="${r.date}" /></td> 
<td><c:out value="${r.time}" /></td> 
</tr> 
</c:forEach> 
 
</table> 

 
</body> 
</html>