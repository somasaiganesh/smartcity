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
translateY(
0
);
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

.search {
	float: right;
	color: white;
	padding: 12px 75px;
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
		<u>Update Tourist Atractions</u>
	</h3>
	<span class="blink">
		<h3 align=center style="color: red">${message}</h3>
	</span>
	<br>

	<form action="updatetadetails?id=${ta.id}" method="post" enctype="multipart/form-data">

		<table align=center>

				<tr>
				<td><label>City</label></td>
				<td><select name="cityname" id="hotel" required>
            <option value="" disabled>Select City</option>
            <c:forEach items="${clist}" var="c">
                <option value="${c.city}" ${c.city eq abc.city ? 'selected' : ''}>${c.city}</option>
                <!-- Add more city options as needed -->
            </c:forEach>
        </select></td>
			</tr>

			<tr>
				<td><label>City Central Image</label></td>
				<td><input type="file" name="citycentralimage" required="required" /><img src="<c:url value='displaycentralimage?id=${ta.id}'/>" alt="City Image"
				 style="width: 300px; height: 200px;"></td>
			</tr>

			<tr>
				<td><label>Tourist Attraction Image 1</label></td>
				<td><input type="file" name="touristattractionimg1" required="required" /><img src="<c:url value='/touristattractionimg1?id=${ta.id}'/>" alt="City Image"
				 style="width: 300px; height: 200px;"></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Name 1</label></td>
				<td><textarea name="touristattractionname1">${ta.taname1}</textarea></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Description 1</label></td>
				<td><textarea name="touristattractiondesc1">${ta.tadesc1}</textarea></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Link 1</label></td>
				<td><textarea name="touristattractionlink1">${ta.talink1 }</textarea></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Image 2</label></td>
				<td><input type="file" name="touristattractionimg2" required="required" /><img src="<c:url value='/touristattractionimg2?id=${ta.id}'/>" alt="City Image"
				 style="width: 300px; height: 200px;"></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Name 2</label></td>
				<td><textarea name="touristattractionname2">${ta.taname2}</textarea></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Description 2</label></td>
				<td><textarea name="touristattractiondesc2">${ta.tadesc2}</textarea></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Link 2</label></td>
				<td><textarea name="touristattractionlink2">${ta.talink2}</textarea></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Image 3</label></td>
				<td><input type="file" name="touristattractionimg3" required="required" /><img src="<c:url value='/touristattractionimg3?id=${ta.id}'/>" alt="City Image"
				 style="width: 300px; height: 200px;"></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Name 3</label></td>
				<td><textarea name="touristattractionname3">${ta.taname3}</textarea></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Description 3</label></td>
				<td><textarea name="touristattractiondesc3">${ta.tadesc3}</textarea></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Link 3</label></td>
				<td><textarea name="touristattractionlink3">${ta.talink3}</textarea></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Image 4</label></td>
				<td><input type="file" name="touristattractionimg4" required="required" /><img src="<c:url value='/touristattractionimg4?id=${ta.id}'/>" alt="City Image"
				 style="width: 300px; height: 200px;"></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Name 4</label></td>
				<td><textarea name="touristattractionname4">${ta.taname4}</textarea></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Description 4</label></td>
				<td><textarea name="touristattractiondesc4">${ta.tadesc4}</textarea></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Link 4</label></td>
				<td><textarea name="touristattractionlink4">${ta.talink4}</textarea></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Image 5</label></td>
				<td><input type="file" name="touristattractionimg5" required="required" /><img src="<c:url value='/touristattractionimg5?id=${ta.id}'/>" alt="City Image"
				 style="width: 300px; height: 200px;"></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Name 5</label></td>
				<td><textarea name="touristattractionname5">${ta.taname5}</textarea></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Description 5</label></td>
				<td><textarea name="touristattractiondesc5">${ta.tadesc5}</textarea></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Link 5</label></td>
				<td><textarea name="touristattractionlink5">${ta.talink1 }</textarea></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Image 6</label></td>
				<td><input type="file" name="touristattractionimg6" required="required" /><img src="<c:url value='/touristattractionimg6?id=${ta.id}'/>" alt="City Image"
				 style="width: 300px; height: 200px;"></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Name 6</label></td>
				<td><textarea name="touristattractionname6">${ta.taname6}</textarea></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Description 6</label></td>
				<td><textarea name="touristattractiondesc6">${ta.tadesc6}</textarea></td>
			</tr>
			
			<tr>
				<td><label>Tourist Attraction Link 6</label></td>
				<td><textarea name="touristattractionlink6">${ta.talink6}</textarea></td>
			</tr>			

			<tr align=center>
				<td colspan=2><input type="submit" value="Update" class="button"></td>
			</tr>
		</table>
	</form>
</body>
</html>