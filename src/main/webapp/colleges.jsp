<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Educational Institutions</title>
    <link rel="stylesheet" href="styles.css" />
    <style>
      /* Font */
@import url('https://fonts.googleapis.com/css?family=Quicksand:400,700');

/* Design */
*,
*::before,
*::after {
  box-sizing: border-box;
}

html {
  background-color: white;
}

body {
  color: #272727;
  font-family: 'Quicksand', serif;
  font-style: normal;
  font-weight: 400;
  letter-spacing: 0;
  padding: 1rem;
}

.main{
  max-width: 1200px;
  margin: 0 auto;
}

h1 {
    font-size: 24px;
    font-weight: 400;
    text-align: center;
}

img {
  height: auto;
  max-width: 100%;
  vertical-align: middle;
}

.btn {
  color: #ffffff;
  padding: 0.8rem;
  font-size: 14px;
  text-transform: uppercase;
  border-radius: 4px;
  font-weight: 400;
  display: block;
  width: 100%;
  cursor: pointer;
  border: 1px solid rgba(255, 255, 255, 0.2);
  background: transparent;
}

.btn:hover {
  background-color: rgba(255, 255, 255, 0.12);
}

.cards {
  display: flex;
  flex-wrap: wrap;
  list-style: none;
  margin: 0;
  padding: 0;
}

.cards_item {
  display: flex;
  padding: 1rem;
}

@media (min-width: 40rem) {
  .cards_item {
    width: 50%;
  }
}

@media (min-width: 56rem) {
  .cards_item {
    width: 33.3333%;
  }
}

.card {
  background-color: white;
  border-radius: 0.25rem;
  box-shadow: 0 20px 40px -14px rgba(0, 0, 0, 0.25);
  display: flex;
  flex-direction: column;
  overflow: hidden;
}

.card_image {
  flex-grow: 1;
}

.card_image img {
  height: 100%; /* Take up 100% of the height within the container */
  width: 100%; /* Maintain aspect ratio */
  object-fit: cover; /* Ensure the entire space is covered */
}

.card_content {
  padding: 1rem;
  background: black;
}

.card_title {
  color: #ffffff;
  font-size: 1.1rem;
  font-weight: 700;
  letter-spacing: 1px;
  text-transform: capitalize;
  margin: 0px;
}

.card_text {
  color: #ffffff;
  font-size: 0.875rem;
  line-height: 1.5;
  margin-bottom: 1.25rem;    
  font-weight: 400;
}
.made_by{
  font-weight: 400;
  font-size: 13px;
  margin-top: 35px;
  text-align: center;
}
    </style>
  </head>
  <body>
  	<%@ include file="navbar.jsp"%>
      <div class="main">
  <h1>Educational Institutions in ${cityname} </h1>
  <ul class="cards">
  <c:forEach items = "${list }" var = "e" >
    <li class="cards_item">
      <div class="card">
        <div class="card_image"><img src="displayeducationimage?id=${e.id}"></div>
        <div class="card_content">
          <h2 class="card_title">${e.name}</h2>
          <p class="card_text"><b>Address</b> : ${e.address}<br>
          Phone : ${e.mobile} <br> Email : ${e.email}     </p>
         <a style="text-decoration: none;" href="${e.link}" target="_blank" ><button class="btn card_btn">Locate</button></a>
        </div>
      </div>
    </li>
    </c:forEach>
  </ul>
</div>
  </body>
</html>