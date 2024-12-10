<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Profile Update</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    
</head>
<body>
<div class="container bootstrap snippet">
     <div class="row">
        <div class="col-sm-10"><h1>Profile</h1>
        <button onclick="goBack()" class="btn btn-default">Back</button>
        </div>
        <div class="col-sm-2"><a href="customerlogout" class="pull-right"><img title="profile image" class="img-circle img-responsive" src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"></a></div>
    </div>

    <div class="row">
      <div class="col-sm-3">
    <div class="text-center">
      <img src="displaycustomerimage?id=${c.id}" alt="avatar" height="250px" width="250px" style="border-radius: 50%; border: 2px solid #ccc;">
        <h1>Profile Photo</h1>
        
    </div>
    <!-- Rest of your content -->

            <br>
            <div class="form-group">
    <div class="col-xs-12">
       
        <a href="mybookings" class="btn btn-primary">My Bookings</a>
    </div>
</div>
            <!-- Activity, Social Media, and other panels can be added here if needed -->
        </div>	        
        <div class="col-sm-9">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
                <!-- Add more tabs if needed -->
            </ul>
            <div class="tab-content">
               <!-- ... Existing HTML content ... -->
<div class="tab-pane active" id="home">
    <hr>
<form class="form" action="updateprofile" method="post" enctype="multipart/form-data">
    <input type="file" name="profileImage" id="profileImage">
    <div class="form-group">
        <div class="col-xs-6">
            <label for="name"><h4>Name</h4></label>
            <input type="text" class="form-control" name="name" id="name" value="${c.name}" required>
        </div>
        <div class="col-xs-6">
            <label for="uname"><h4>User Name</h4></label>
            <input type="text" class="form-control" name="uname" id="uname" value="${c.username}" required>
        </div>
    </div>
    <div class="form-group">
        <div class="col-xs-6">
            <label for="email"><h4>Email</h4></label>
            <input type="email" class="form-control" name="email" id="email" value="${c.email}" required readonly="readonly">
        </div>
        <div class="col-xs-6">
            <label for="contact"><h4>Contact No</h4></label>
            <input type="text" class="form-control" name="contact" id="contact" value="${c.contactno}" required>
        </div>
    </div>
    <div class="form-group">
        <div class="col-xs-6">
            <label for="pwd"><h4>Password</h4></label>
            <input type="password" class="form-control" name="pwd" id="pwd" value="${c.password}" required>
        </div>
    </div>
    <div class="form-group">
        <div class="col-xs-6">
            <label for="dob"><h4>Date of Birth</h4></label>
            <input type="date" class="form-control" name="dob" id="dob" value="${c.dob}" required>
        </div>
        <div class="col-xs-6">
            <label for="address"><h4>Address</h4></label>
            <input type="text" class="form-control" name="address" id="address" value="${c.address}" required>
        </div>
    </div>

    <div class="form-group">
        <div class="col-xs-12">
        <br>
            <button type="submit" class="btn btn-primary">Update</button>
        </div> 
    </div>
</form>



    <hr>
</div>
                <!-- Add more tab content if needed -->
            </div><!--/tab-content-->
        </div><!--/col-9-->
    </div>
    <script>
    function goBack() {
        window.history.back();
    }
   </script>
</div>
</body>
</html>
