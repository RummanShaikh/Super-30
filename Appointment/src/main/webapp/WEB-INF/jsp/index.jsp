<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Doctor Appointment Booking</title>
    <style>
        body {
            background-color: #ffffff; /* Set background color to white */
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            overflow: hidden;
        }

        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(255, 255, 255, 0.5); /* Adjust the alpha value for the desired level of blur */
            z-index: -1;
        }

        .container {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            color: #333333; /* Change text color */
            z-index: 1;
        }

        /* Styled button */
        .btn {
            padding: 10px 20px;
            background-color: #007BFF;
            color: #fff;
            border: 2px solid #007BFF; /* Add border */
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease, border-color 0.3s ease; /* Add border-color transition */
            text-decoration: none; /* Remove default link underline */
            display: inline-block; /* Make the link a block element */
            margin: 10px; /* Add margin for spacing */
        }

        .btn:hover {
            background-color: #ffffff; /* Change background color on hover */
            color: #007BFF; /* Change text color on hover */
            border-color: #007BFF; /* Change border color on hover */
        }
    </style>
</head>
<body>

<div class="overlay"></div>

<div class="container">
    <h1>Welcome</h1>
    <div>
        <a href="appointmentForm" class="btn">Wanna Book an Appointment?</a>
        <a href="checkAppointment" class="btn">Check Appointment</a>
    </div>
</div>

</body>
</html>
