<!DOCTYPE html>
<html>
<head>
    <style>
        /* Style for the circular icon */
         .icon-container {
      /* Move the icon to the left and set a distance from the right corner */
      position: absolute;
      top: 20px; /* Adjust the top position as needed */
      right: 20px; /* Adjust the right position to create a distance from the right corner */
    }
        .icon {
            width: 40px;
            height: 40px;
            background-color: #3498db;
            border-radius: 50%;
            color: #fff;
            text-align: center;
            line-height: 40px;
            cursor: pointer;
            font-size: 24px;
        }
        /* Style for the dropdown content */
         .dropdown-content {
      /* Adjust the width of the dropdown content and move it to the left */
      display: none;
      position: absolute;
      background-color: #f9f9f9;
      width: 160px; /* Adjust the width as needed */
      box-shadow: 0px -8px 16px 0px rgba(0,0,0,0.2); /* Adjust the box-shadow to move it to the left */
      z-index: 1;
      top: 50px; /* Position the dropdown below the icon */
      right: -20px; /* Create a distance from the icon container */
    }
        
        .show-dropdown {
            display: block;
        }
        /* Style for dropdown items */
        .dropdown-item {
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            color: #333;
        }
    </style>
</head>
<body>
    <!-- Circular icon container -->
    <div class="icon-container">
        <div class="icon" onclick="toggleDropdown()">&#128100;</div> <!-- Unicode profile human icon -->
        <!-- Dropdown content -->
        <div class="dropdown-content" id="dropdown">
            <a class="dropdown-item" href="profile">Profile</a>
            <a class="dropdown-item" href="mybookings">My Bookings</a>
             <a class="dropdown-item" href="quiz">Take Quiz</a>
            <a class="dropdown-item" href="customerlogout">LogOut</a>
        </div>
    </div>

    <script>
        function toggleDropdown() {
            var dropdown = document.getElementById("dropdown");
            dropdown.classList.toggle("show-dropdown");
        }
    </script>
</body>
</html>
