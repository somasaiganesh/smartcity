<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
body {
	margin: 0;
	font-family: Arial, sans-serif;
	background-color: #f5f5f5;
}

.social-media-section {
	margin-top: 20px;
	text-align: center;
	display: flex;
	justify-content: center;
}

.social-media-icon {
	font-size: 24px;
	color: #b90c18;
	margin: 0 10px;
	transition: color 0.3s;
}

.social-media-icon:hover {
	color: #d3151e;
}

.social-media-icons {
	display: flex;
	justify-content: center;
	align-items: center;
}

.login-register-button {
	position: absolute;
	top: 20px;
	right: 20px;
	background-color: #ffcc00;
	color: #333;
	border: none;
	padding: 10px 15px;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s, color 0.3s;
}

.login-register-button:hover {
	background-color: #444;
	color: #fff;
}
/* Reset some default styles */
body, h1, h2, p {
	margin: 0;
	padding: 0;
}

/* Basic styling */
body {
	font-family: Arial, sans-serif;
	line-height: 1.6;
	background-color: #fff;
}

section img {
	max-width: 100%;
	height: auto;
	top: 0%;
	display: block;
	margin: 1em auto;
}

.image-grid {
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	gap: 1em;
}

.image-grid img {
	max-width: 90%;
	height: auto;
	display: block;
	transition: transform 0.3s ease;
	/* Add a transition for smooth zoom effect */
}

.image-grid img:hover {
	transform: scale(1.1); /* Zoom in by 10% on hover */
}

nav {
	text-align: center; /* Center-align the navigation links */
}

nav ul {
	list-style-type: none;
	padding: 1em 0; /* Adjust the top and bottom padding */
	display: flex;
	justify-content: center;
	background-color: #544ef9;
	border-radius: 10px;
}

#google_translate_element {
	margin-top: 20px;
	text-align: right;
}

.goog-te-combo {
	width: auto !important;
	padding: 5px;
	margin: 0 !important;
}

nav li {
	margin: 0 1em;
}

nav a {
	text-decoration: none;
	color: #fff;
	font-size: 18px; /* Adjust the font size as needed */
}

section {
	padding: 2em;
}

#map iframe {
	width: 100%;
	max-width: 800px;
	height: 450px;
	border: none;
	margin: 1em auto;
	display: block;
}

#statistics .stat-container {
	display: flex;
	justify-content: space-around;
	align-items: center;
	flex-wrap: wrap;
	margin-top: 1em;
}

#statistics .chart-container {
	width: 30%;
	margin: 1em;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.chart-container {
	width: 80%;
	max-width: 800px;
	margin: 50px auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

footer {
	text-align: center;
	padding: 1em;
	background-color: #333;
	color: #fff;
}

.image-container {
	display: flex; /* Display images in a flex container */
}

.image-container img {
	margin-left: 5px;
	margin-right: 5px;
	border: 4px solid #000000;
	transition: transform 0.3s ease;
	/* Add a transition property for smooth movement */
}

.image-container img:hover {
	transform: scale(1.1);
	/* Move the image to the right by 10px on hover */
}

.image-container2 {
	display: flex;
	justify-content: space-between;
	/* Distributes items along the main axis with equal space between them */
	align-items: center; /* Centers items vertically */
	margin: 20px 0;
	/* Adds margin to the top and bottom of the container */
}

.image-container2 img {
	width: 400px;
	height: 250px;
	border: 4px solid #000000;
	transition: transform 0.3s ease;
}

.image-container2 img:hover {
	transform: scale(1.1);
}

#private {
	text-align: center;
}

table {
	width: 100%;
	margin: 20px auto;
	border-collapse: collapse;
	border: 4px solid #333;
}

th, td {
	width: 33.33%;
	border: 2px solid #333;
	padding: 10px;
	text-align: center;
}

th {
	background-color: #f2f2f2;
}

.ride-info {
	font-size: 14px;
	color: #000000;
	margin-top: 5px;
	text-align: left;
}

.ride-logo img {
	width: 250px;
	height: 200px;
}

.image-grid {
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
}

.image-box {
	width: 48%; /* Each image takes up half of the available width */
	margin-bottom: 20px;
	box-sizing: border-box; /* Include border in width calculation */
	transition: border-color 0.3s;
	/* Add transition for smooth hover effect */
}

.image-box img {
	width: 500px;
	height: 300px;
	border: 4px solid black; /* Black border with 4px width */
}

.image-box hover {
	transform: scale(1.1);
}
</style>
</head>
<body>
<%@ include file="navbar.jsp" %>
	<nav>
		<ul>
			<li><a href="#public">Public Transport</a></li>
			<li><a href="#private">Private Transport</a></li>
			<li><a href="#airlines">Airlines</a></li>
		</ul>
	</nav>
	<div id="google_translate_element"></div>
	<li></li>
	<section id="public">
		<h2>RTC Buses</h2>
  <div class="image-container">
  <img src="https://assets.thehansindia.com/h-upload/2020/09/24/1600x960_1000966-hyderabadcityus.jpg" alt="Hyderabad City" width="400" height="100" >
  <img src="https://img.ap7am.com/bimg/cr-20220302en621f753eb7787.jpg" alt="Hyderabad City" width="400" height="100">
  <img src="https://indtoday.com/wp-content/uploads/2022/04/Bus-Fares.jpg" alt="Hyderabad City" width="400" height="100" >
  </div>
  <p>Telangana State Road Transport Corporation (abbreviated as TSRTC) is a state-owned corporation that runs bus transport services to and from the Indian state of Telangana. It was formed in 2014 by splitting the Andhra Pradesh State Road Transport Corporation. Many other Indian metro towns in Andhra Pradesh, Karnataka, Maharashtra, Goa, Odisha and Chhattisgarh are also linked with the services of TSRTC. It serves about 6 million passengers every day, having three zones and services operating through 99 depots.TSRTC has three zones: Hyderabad Rural (HR), Greater Hyderabad (GHz), and Karimnagar (KRMR). It is further subdivided into 11 regions and 25 divisions. It has a fleet of 9,232 buses, of which around 2,822 are hired vehicles. TSRTC buses undertake operations on 36,593 routes.
  </p>
  
  <h2>Metro</h2>
  <div class="image-container2">
  <img src="https://www.newstap.in/h-upload/2022/12/08/1445601-hyderabad-metro-rail.jpg" alt="Hyderabad City" width="400" height="100" >
  <img src="https://images.livemint.com/rf/Image-621x414/LiveMint/Period1/2014/09/18/Photos/metrohyderabad--621x414.jpg" alt="Hyderabad City" width="400" height="100">
  </div>
  <p>
    The Hyderabad Metro is a rapid transit system, serving the city of Hyderabad, Telangana, India. It is the third longest operational metro network in India after Delhi Metro and Namma Metro (Bengaluru), and the lines are arranged in a secant model. It is funded by a public–private partnership (PPP), with the state government holding a minority equity stake. Hyderabad Metro is the world's largest elevated Metro Rail system based on DBFOT basis (Design, Built, Finance, Operate and Transfer).A special purpose vehicle company, L&T Metro Rail Hyderabad Ltd (L&TMRHL), was established by the construction company L&T to develop the Hyderabad metro rail project.
  </p>
</section>

<section id="private">
  <h2>Private Transport</h2>
  <table>
    <tr>
      <th>OLA</th>
      <th>UBER</th>
      <th>RAPIDO</th>
    </tr>
    <tr>
      <td class="ride-logo">
        <img src="https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/24c72e53423673.5936a81f24164.gif" alt="OLA" >
        <div class="ride-info"><p>Ola Cabs (stylized as OLΛ) is an Indian multinational ridesharing company, headquartered in Bangalore. It also operates in other business verticals including financial services and cloud kitchens.</p>

          <p>A variety of venture capitalists including Softbank have large stakes in the company. In January 2018, Ola extended into its first overseas market, Australia, and launched in New Zealand in September 2018. In March 2019, Ola began its operations in the UK.</p></div>
      </td>
      <td class="ride-logo">
        <img src="https://i.pinimg.com/originals/40/46/80/40468022120d25921a8bea90b1c1b4c9.gif" alt="UBER">
        <div class="ride-info"><p>Uber Technologies, Inc. (commonly referred to as Uber) is an American transportation conglomerate that mainly provides taxi services where individuals can hail a taxi (Uber) in an app on their phone. </p>
          <p>
          Uber sets fares using dynamic pricing, which is a model based on the local supply and demand in a specific region at the time of the booking. The company has over 131 million monthly active users and 5.4 million active drivers worldwide. The company has an average of 23 million trips each day through all of their services combined.</p></div>
      </td>
      <td class="ride-logo">
        <img src="https://media3.giphy.com/media/DiGMo92HaAmBImPDxh/200w.gif" alt="RAPIDO" >
        <div class="ride-info"><p>Rapido is an Indian bike taxi aggregator and logistics service provider based in Bangalore. Founded in 2015, the company operates in over 100 cities across the country, but has run into legal troubles in several locations where bike taxis are not legal.</p>
          <p>
          The company was founded in 2015 as theKarrier by two IIT alumni and a PESU alumni – Aravind Sanka, Pavan Guntupalli, and SR Rishikesh. In September 2018, reports were that Rapido has over 15,000 registered riders, with average rides of 30,000 per day. </p></div>
      </td>
    </tr>
  </table>
</section>

<section id="airlines">
  <h2>Airlines</h2>
  <h3><u>Rajiv-Gandhi-International-Airport</u></h3>
  <div class="image-grid">
    <div class="image-box">
      <img src="https://blogbox.indianeagle.com/wp-content/uploads/2017/10/Rajiv-Gandhi-International-Airport.jpg">
    </div>
    <div class="image-box">
      <img src="https://images.unsplash.com/photo-1597913201834-1ef10d867d92?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHBsYW5lJTIwdGFrZW9mZnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80">
    </div>
  </div>
  <p>Rajiv Gandhi International Airport (IATA: HYD, ICAO: VOHS) is an international airport that serves Hyderabad, the capital of the Indian state of Telangana. It is located in Shamshabad, about 24 kilometres (15 mi) south of Hyderabad and it was opened on 23 March 2008 to replace Begumpet Airport, which was the sole civilian airport serving Hyderabad. It is named after Rajiv Gandhi, former Prime Minister of India. Built over an area of 5,500 acres (2,200 ha), it is the largest airport of India by area. It is owned and operated by GMR Hyderabad International Airport Limited (GHIAL), a public–private consortium. Rajiv Gandhi International Airport, Hyderabad was the first airport in India to launch domestic e-boarding facility in December 2015 and international e-boarding facility in October 2020. It has also ranked in AirHelp's list of top 10 airports in the world. The fourth busiest airport in India by passengers traffic, it handled almost 21 million passengers and over 140,000 tonnes (150,000 short tons) of cargo between April 2022 and March 2023.</p>
	</section>

	<script type="text/javascript">
		function googleTranslateElementInit() {
			new google.translate.TranslateElement({
				pageLanguage : 'en',
				layout : google.translate.TranslateElement.InlineLayout.SIMPLE
			}, 'google_translate_element');
		}
	</script>
	<script type="text/javascript"
		src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
</body>
</html>
