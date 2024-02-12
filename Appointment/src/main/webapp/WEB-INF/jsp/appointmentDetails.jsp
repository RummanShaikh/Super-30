<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Appointment Details</title>
</head>
<body>
<h1>Appointment Details</h1>
<p>Patient Name: <span th:text="${appointment.patient_name}"></span></p>
<p>Doctor Name: <span th:text="${appointment.doctor_name}"></span></p>
<p>Date: <span th:text="${appointment.date}"></span></p>
<p>Time: <span th:text="${appointment.time}"></span></p>
<p>Status: <span th:text="${appointment.status}"></span></p>
</body>
</html>
