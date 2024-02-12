<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Prescription Management System</title>
    <link href="https://fonts.googleapis.com/css2?family=Hammersmith+One&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Hammersmith One', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            flex-direction: column;
        }

        h1 {
            color: #007BFF;
            margin-bottom: 30px;
            font-size: 36px;
            text-align: center;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .pres_submit {
            margin-bottom: 20px;
        }

        .pres_submit a {
            text-decoration: none;
            display: block;
            font-size: 24px;
            font-family: sans-serif;
            text-decoration: none;
            color: #333;
            border-top: 2px solid #333;
            border-bottom: 2px solid #333;
            padding: 15px; /* Set a fixed height for the links */
            letter-spacing: 2px;
            transition: all .25s;
        }

        .pres_submit a:hover {
            letter-spacing: 15px;
        }
    </style>
</head>
<body>
<h1>Welcome to Prescription Management System</h1>
<div class="pres_submit">
    <a href="chat">Prescription with AI Bot</a>
</div>
<div class="pres_submit">
    <a href="Prescription">Prescription with Doctor</a>
</div>
<div class="pres_submit">
    <a href="displayPrescriptionForm">Doctor's Prescription</a>
</div>
<div class="pres_submit">
    <a href="alterDoctorPrescriptionForm">Give prescription as a doctor</a>
</div>
</body>
</html>
