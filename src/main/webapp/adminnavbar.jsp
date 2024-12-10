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
        <li><a href="adminhome.jsp">Home</a></li>
        
        <li class="dropdown">
            <a href="javascript:void(0)">View</a>
            <div class="dropdown-content">
            	<a href="viewallcustomers.jsp">View Customers</a>
            	<a href="viewallcities.jsp">View Cities</a>
            	<a href="viewallabout.jsp">View About</a>
            	<a href="viewalltouristattractions.jsp">View Tourist Attractions</a>
            	<a href="viewqueries.jsp">View Queries</a>
            </div>
            
        </li>
        
        <li class="dropdown">
            <a href="javascript:void(0)">Delete</a>
            <div class="dropdown-content">
            	<a href="deletecustomer.jsp">Delete Customer</a>
            	<a href="deletehotel.jsp">Delete Hotel</a>
            	<a href="deletehospital.jsp">Delete Hospital</a>
            	<a href="deletecompany.jsp">Delete Company</a>
            	<a href="deletemall.jsp">Delete Mall</a>
            	<a href="deleterestaurant.jsp">Delete Restaurant</a>
            	<a href="deletecollege.jsp">Delete College</a>
            </div>
        </li>
        
        <li class="dropdown">
            <a href="javascript:void(0)">Add</a>
            <div class="dropdown-content">
            	<a href="addcity.jsp">Add City</a>
            	<a href="addabout.jsp">Add About</a>
            	<a href="addtouristattractions.jsp">Add Tourist Attractions</a>
                <a href="addhotel.jsp">Add Hotel</a>
                <a href="addhospital.jsp">Add Hospital</a>
                 <a href="addcompany.jsp">Add Company</a>
                <a href="addmall.jsp">Add Shopping Mall</a>
                <a href="addrestaurant.jsp.">Add Restaurant</a>
                <a href="addeducation.jsp">Add Colleges</a>
            </div>
        </li>
        
        
        <li class="dropdown">
            <a href="javascript:void(0)">Update</a>
            <div class="dropdown-content">
            	<a href="updatestatus.jsp">Update Status</a>
            	<a href="updatecity.jsp">Update City</a>
            	<a href="updateaboutcity.jsp">Update About</a>
            	<a href="updatetouristattractions.jsp">Update Tourist Attractions</a>
            </div>
        </li>
        
        <li><a href="index.jsp">Logout</a></li>
    </ul>
</body>
</html>
