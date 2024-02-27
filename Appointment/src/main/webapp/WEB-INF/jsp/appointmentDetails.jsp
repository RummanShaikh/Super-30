<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Appointment Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            color: #007BFF;
            margin-bottom: 20px;
        }

        p {
            margin-bottom: 10px;
        }

        span {
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Appointment Details</h1>
    <p>Patient Name: <span th:text="${appointment.patient_name}"></span></p>
    <p>Doctor Name: <span th:text="${appointment.doctor_name}"></span></p>
    <p>Date: <span th:text="${appointment.date}"></span></p>
    <p>Time: <span th:text="${appointment.time}"></span></p>
    <p>Status: <span th:text="${appointment.status}"></span></p>
</div>
</body>
</html>

