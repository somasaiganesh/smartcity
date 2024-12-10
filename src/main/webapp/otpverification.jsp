
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>OTP Verification Form</title>
    <link rel="stylesheet" href="style.css" />
    <!-- Boxicons CSS -->
    <style>
        <!-- Your CSS styles here -->
        /* Import Google font - Poppins */
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}
body {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background: #4070f4;
}
:where(.container, form, .input-field, header) {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}
.container {
  background: #fff;
  padding: 30px 65px;
  border-radius: 12px;
  row-gap: 20px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
}
.container header {
  height: 65px;
  width: 65px;
  background: #4070f4;
  color: #fff;
  font-size: 2.5rem;
  border-radius: 50%;
}
.container h4 {
  font-size: 1.25rem;
  color: #333;
  font-weight: 500;
}
form .input-field {
  flex-direction: row;
  column-gap: 10px;
}
.input-field input {
  height: 45px;
  width: 42px;
  border-radius: 6px;
  outline: none;
  font-size: 1.125rem;
  text-align: center;
  border: 1px solid #ddd;
}
.input-field input:focus {
  box-shadow: 0 1px 0 rgba(0, 0, 0, 0.1);
}
.input-field input::-webkit-inner-spin-button,
.input-field input::-webkit-outer-spin-button {
  display: none;
}
form button {
  margin-top: 25px;
  width: 100%;
  color: #fff;
  font-size: 1rem;
  border: none;
  padding: 9px 0;
  cursor: pointer;
  border-radius: 6px;
  pointer-events: none;
  background: #6e93f7;
  transition: all 0.2s ease;
}
form button.active {
  background: #4070f4;
  pointer-events: auto;
}
form button:hover {
  background: #0e4bf1;
}
  p {
        text-align: center;
        color: red;
        margin-top: 10px;
    } .button-container {
        text-align: center;
        margin: 20px; /* Adjust the margin as needed */
    }

    /* Style for the button */
    .styled-button {
        background-color: #4CAF50; /* Green background color */
        color: white; /* White text color */
        padding: 10px 20px; /* Add padding for better appearance */
        font-size: 16px; /* Adjust the font size as needed */
        border: none; /* Remove border */
        border-radius: 5px; /* Add border-radius for rounded corners */
        cursor: pointer; /* Add cursor pointer on hover */
    }

    /* Hover effect */
    .styled-button:hover {
        background-color: #45a049; /* Darker green on hover */
    }
    </style>
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
    <script src="script.js" defer></script>
</head>
<body>
<div class="container">
    <header>
        <i class="bx bxs-check-shield"></i>
    </header>
    <h4>Enter OTP Code</h4>
    <form action="verifyotp" method="post">
    <p>${message}</p>
    <div class="input-field">
        <input type="text" name="otp1" pattern="[0-9]" maxlength="1" autocomplete="off" /> <!-- Accepts only one digit -->
        <input type="text" name="otp2" pattern="[0-9]" maxlength="1" autocomplete="off" />
        <input type="text" name="otp3" pattern="[0-9]" maxlength="1" autocomplete="off" />
        <input type="text" name="otp4" pattern="[0-9]" maxlength="1" autocomplete="off" />
    </div>
   <div class="button-container">
    <input type="submit" class="styled-button">
    <span class="button-text"></span>
</div>
</form>
    



</div>
<script>
const inputs = document.querySelectorAll("input");

inputs.forEach((input, index) => {
    input.addEventListener("keyup", (event) => {
        const currentInput = event.target;
        const value = currentInput.value;

        if (event.key === "Backspace") {
            // Prevent focusing on the next input when backspace is pressed
            if (index > 0) {
                inputs[index - 1].focus();
            }
        } else {
            if (value.length === 1) {
                if (index < inputs.length - 1) {
                    inputs[index + 1].focus();
                }
            }

            if (value.length > 1) {
                currentInput.value = value.slice(0, 1);
            }
        }
    });
});

document.addEventListener("DOMContentLoaded", function() {
    const verifyButton = document.querySelector("button");
    verifyButton.addEventListener("click", function(event) {
        event.preventDefault(); // Prevent the default behavior of the button
        verifyOTP(); // Call the function to handle form submission
    });
});
</script>
</body>
</html>

