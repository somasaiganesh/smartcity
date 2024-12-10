<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Shopping Malls</title>
    <link rel="stylesheet" href="style.css">
    <style>
      *{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
    background-color: white;
    height: 100vh;
    display: grid;
    place-items: center center;
    font-family: 'Poppins',sans-serif;
}
    
.cards{
    display: grid;
    grid-template-columns: repeat(auto-fit,minmax(400px,1fr));
    padding: 20px;
    grid-gap: 40px;    
}
.card{
    background-color: #1c1b29;
    border-radius: 20px;
    box-shadow: 0 0 30px rgba(0,0,0,0.18);
}

.card-button {
    display: block;
    width: 100%;
    padding: 10px;
    margin-top: 10px;
    background-color: #2c2b3c;
    color: #ffffff;
    border: none;
    border-radius: 0 0 20px 20px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.card-button:hover {
    background-color: #1c1b29;
}

.container{
    position: relative;
    clip-path: polygon(0 0,100% 0, 100% 85%, 0 100%);
}
img{
    width: 100%;
    display: block;
    border-radius: 20px 20px 0 0;
}
.container:after{
    content: "";
    height: 100%;
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
    border-radius: 20px 20px 0 0;
    opacity: 0.7;
}

.card {
    display: flex;
    flex-direction: column;
    height: 100%;
}

.details {
    flex-grow: 1;
}

.card-button {
    width: 100%;
    padding: 10px;
    background-color: #4CAF50;
    color: #ffffff;
    border: none;
    border-radius: 0 0 20px 20px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    margin-b 10px;
}

.card-button:hover {
    background-color: #45a049;
}

.details{
    padding: 20px 10px;
}
.details>h3{
    color: #ffffff;
    font-weight: 600;
    font-size: 18px;
    margin: 10px 0 15px 0;
}
.details>p{
    color: #a0a0a0;
    font-size: 15px;
    line-height: 30px;
    font-weight: 400;
}
    </style>
</head>
<body>
<%@ include file="navbar.jsp" %>
    <div class="cards">
    <c:forEach items = "${list }" var = "m" >
        <div class="card card1">
            <div class="container">
                <img src="displaymallimage?id=${m.id}" alt="las vegas">
            </div>
            <div class="details">
                <h3><c:out value="${m.name}"></c:out></h3>
                <p>${m.description}</p>
                           
            </div>            
    <button class="card-button" onclick="window.open('${m.link}', '_blank')">Click me</button>
        </div>
        </c:forEach>
    </div>
</body>
</html>