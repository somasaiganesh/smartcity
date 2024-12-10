<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<link type="text/css" rel="stylesheet" href="css/style.css">

<style>
statistics-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	margin-top: 50px;
	animation: fallIn 1.5s ease-in-out;
}

@
keyframes fallIn { 0% {
	transform: translateY(-200px);
}

100




%
{
transform




:




translateY


(




0




)


;
}
}
.statistics-box:hover {
	transform: scale(1.1); /* Zoom out the card */
	background-color: #e7c798; /* Change the background color */
}

.statistics-box p {
	font-size: 48px;
	margin: 0;
	color: #008000; /* Green color for the number values */
}

.statistics-box {
	flex: 1;
	max-width: 300px;
	background-color: #cad9db;
	padding: 20px;
	margin: 10px;
	box-shadow: 0 5px 10px rgba(163, 157, 157, 0.2);
	text-align: center;
	color: #0a0808;
	border-radius: 10px;
}

.statistics-box h2 {
	font-size: 36px;
	margin-bottom: 20px;
}

.statistics-box p {
	font-size: 48px;
	margin: 0;
}

.navbar {
	background-color: black;
	border-radius: 30px;
}

.navbar ul {
	overflow: auto;
}

.navbar li {
	float: left;
	list-style: none;
	margin: 13px 20px;
}

.navbar li a {
	padding: 3px 3px;
	text-decoration: none;
	color: white;
}

.navbar li a:hover {
	color: red
}

.search {
	float: right;
	color: white;
	padding: 12px 75px;
}

.navbar input {
	border: 2px solid black;
	border-radius: 14px;
	padding: 3px 17px;
	width: 129px;
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

input[type=text], input[type=password], input[type=number], input[type=email],
	select, input[type=date], input[type=file], textarea {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

label {
	padding: 12px 12px 12px 0;
	display: inline-block;
	font-weight: bold;
}
</style>
</head>
<body>
	<%@ include file="adminnavbar.jsp"%>
	<h3 align=center>
		<u>Add Restaurant</u>
	</h3>
<span class="blink">
<h3 align=center  style="color : red " >${message} </h3>
</span>
	<br>

	<form action="insertrestaurant" method="post" enctype="multipart/form-data">

		<table align=center>

			<tr>
				<td></td>
			</tr>
			
			<tr>
				<td><label>City</label></td>
				<td><select name="cityname" id="hotel" required>
						<option value="" disabled selected>Select City</option>
						<c:forEach items="${clist}" var="c">
							<option value="${c.city}">${c.city}</option>
							<!-- Add more vehicle options as needed -->
							</c:forEach>
					</select></td>
			</tr>
			
			<tr>
				<td></td>
			</tr>
			

			<tr>
				<td><label>Restaurant Name</label></td>
				<td><input type="text" name="restaurantname" required="required" /></td>
			</tr>

			<tr>
				<td></td>
			</tr>
			
			<tr>
				<td><label>Type of Food</label></td>
				<td><input type="text" name="restauranttype" required="required" /></td>
			</tr>

			<tr>
				<td></td>
			</tr>

			<tr>
				<td><label>Restaurant Description</label></td>
				<td><textarea name="restaurantdescription"></textarea></td>
			</tr>

			<tr>
				<td></td>
			</tr>

			<tr>
				<td><label>Restaurant Link</label></td>
				<td><input type="text" name="restaurantlink" /></td>
			</tr>

			<tr>
				<td></td>
			</tr>

			<tr>
				<td><label>Restaurant Image</label></td>
				<td><input type="file" name="restaurantimage" required="required" /></td>
			</tr>

			<tr>
				<td></td>
			</tr>
			<tr>
				<td></td>
			</tr>

			<tr align=center>
				<td colspan=2><input type="submit" value="Add" class="button"></td>
			</tr>

		</table>
	</form>
</body>
</html>
