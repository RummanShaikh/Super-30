<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor's Prescription Form</title>
    <link href="https://fonts.googleapis.com/css2?family=Lato:100&display=swap" rel="stylesheet">
    <style>
        body, html {
            width: 100%;
            height: 100%;
            margin: 0;
            padding: 0;
            background: #ffffff; /* Set the background to white */
            font-family: 'Lato', sans-serif;
        }

        .form-container {
            width: 400px;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            margin-bottom: 20px; /* Add margin to create space between form and button */
        }

        h2 {
            color: #007BFF;
            margin-bottom: 20px;
            font-family: 'Catamaran', sans-serif;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input,
        textarea,
        select {
            width: calc(100% - 20px); /* Adjust width to accommodate the arrow */
            padding: 8px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            appearance: none; /* Remove default arrow in Firefox */
            -webkit-appearance: none; /* Remove default arrow in WebKit browsers */
            background: #fff; /* Set background color */
            transition: border-color 0.3s ease-in-out, background 0.3s ease-in-out; /* Add transition effect */
        }

        input:hover,
        textarea:hover,
        select:hover,
        input:focus,
        textarea:focus,
        select:focus {
            border-color: #007BFF; /* Change border color on hover or focus */
            background: #f9f9f9; /* Change background color on hover or focus */
        }

        select::-ms-expand {
            display: none; /* Remove the arrow in Internet Explorer */
        }

        /* Custom dropdown arrow */
        select:after {
            content: "\25BC"; /* Unicode character for down arrow */
            position: absolute;
            top: 50%;
            right: 10px;
            transform: translateY(-50%);
            color: #333; /* Adjust arrow color */
            pointer-events: none;
        }

        .btn {
            width: 180px;
            height: 60px;
            cursor: pointer;
            background: transparent;
            border: 1px solid #91C9FF;
            outline: none;
            transition: background 0.5s ease, color 0.5s ease, border-radius 0.5s ease; /* Faster transition */
            border-radius: 30px; /* Make the button more rounded */
        }

        svg {
            position: absolute;
            left: 0;
            top: 0;
            fill: none;
            stroke: #fff;
            stroke-dasharray: 150 480;
            stroke-dashoffset: 150;
            transition: 0.5s ease-in-out; /* Faster transition */
        }

        .btn:hover {
            background: #4F95DA;
            color: white; /* Change text color to white on hover */
            border-radius: 5px; /* Further adjust the border-radius on hover if needed */
        }

        .btn:hover svg {
            stroke-dashoffset: -480;
        }

        .btn span {
            color: black; /* Set the initial text color */
            font-size: 18px;
            font-weight: 100;
            position: relative;
            z-index: 1;
        }
    </style>
</head>
<body>

<div class="form-container">
    <form action="submitPrescription" method="post">
        <h2>Doctor's Prescription Form</h2>

        <label for="doctorName">Doctor's Name:</label>
        <select id="doctorName" name="doctorName" required>
            <option value="" disabled selected>Select Doctor</option>
            <option value="Dr. Rumman Shaikh">Dr. Rumman Shaikh</option>
            <!-- Add more options as needed -->
        </select>

        <label for="patientName">Patient's Name:</label>
        <input type="text" id="patientName" name="patientName" required>

        <label for="prescriptionText">Prescription Text:</label>
        <textarea id="prescriptionText" name="prescriptionText" rows="4" required></textarea>

        <button class="btn">
            <svg width="180px" height="60px" viewBox="0 0 180 60" class="border">
                <polyline points="179,1 179,59 1,59 1,1 179,1" class="bg-line" />
                <polyline points="179,1 179,59 1,59 1,1 179,1" class="hl-line" />
            </svg>
            <span>Submit</span>
        </button>
    </form>
</div>

</body>
</html>
