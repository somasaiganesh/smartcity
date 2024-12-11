<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: gray;
            color: #fff;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            padding: 20px 0;
        }
ul {
            margin-top: 20px; /* Add space before the list */
        }
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            background-color: #222;
        }

        li {
            margin: 0;
            padding: 0;
        }

        li a {
            display: block;
            color: #fff;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover {
            background-color: #555;
        }
        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #333;
            min-width: 160px;
            z-index: 1;
        }

        .dropdown-content a {
            color: #fff;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {
            background-color: #555;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }
    </style>
</head>
<body>
   

    <ul>
        <li><a href="adminhome">Home</a></li>
        
        <li class="dropdown">
            <a href="javascript:void(0)">View</a>
            <div class="dropdown-content">
            	<a href="viewallcustomers">View Customers</a>
            	<a href="viewallcities">View Cities</a>
            	<a href="viewallabout">View About</a>
            	<a href="viewalltouristattractions">View Tourist Attractions</a>
            	<a href="viewqueries">View Queries</a>
            </div>
            
        </li>
        
        <li class="dropdown">
            <a href="javascript:void(0)">Delete</a>
            <div class="dropdown-content">
            	<a href="deletecustomer">Delete Customer</a>
            	<a href="deletehotel">Delete Hotel</a>
            	<a href="deletehospital">Delete Hospital</a>
            	<a href="deletecompany">Delete Company</a>
            	<a href="deletemall">Delete Mall</a>
            	<a href="deleterestaurant">Delete Restaurant</a>
            	<a href="deletecollege">Delete College</a>
            </div>
        </li>
        
        <li class="dropdown">
            <a href="javascript:void(0)">Add</a>
            <div class="dropdown-content">
            	<a href="addcity">Add City</a>
            	<a href="addabout">Add About</a>
            	<a href="addtouristattractions">Add Tourist Attractions</a>
                <a href="addhotel">Add Hotel</a>
                <a href="addhospital">Add Hospital</a>
                 <a href="addcompany">Add Company</a>
                <a href="addmall">Add Shopping Mall</a>
                <a href="addrestaurant">Add Restaurant</a>
                <a href="addeducation">Add Colleges</a>
            </div>
        </li>
        
        
        <li class="dropdown">
            <a href="javascript:void(0)">Update</a>
            <div class="dropdown-content">
            	<a href="updatestatus">Update Status</a>
            	<a href="updatecity">Update City</a>
            	<a href="updateaboutcity">Update About</a>
            	<a href="updatetouristattractions">Update Tourist Attractions</a>
            </div>
        </li>
        
        <li><a href="index">Logout</a></li>
    </ul>
</body>
</html>
