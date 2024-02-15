<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display Patients</title>
    <style>
        body {
            background: url('https://img.freepik.com/free-photo/blur-hospital_1203-7972.jpg?size=626&ext=jpg&ga=GA1.1.954076464.1703259308&semt=ais') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>
<h1>Display Appointments</h1>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Date</th>
        <th>Doctor Name</th>
        <th>Patient Name</th>
        <th>Status</th>
        <th>Time</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${appointments}" var="patient">
        <tr>
            <td><c:out value="${patient.id}" /></td>
            <td><c:out value="${patient.date}" /></td>
            <td><c:out value="${patient.doctor_name}" /></td>
            <td><c:out value="${patient.patient_name}" /></td>
            <td><c:out value="${patient.status}" /></td>
            <td><c:out value="${patient.time}" /></td>
        </tr>
    </c:forEach>
    </tbody>
</table><br>

<h1>Display Prescription</h1>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Prescription</th>
        <th>Patient Name</th>
        <th>Symptoms</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${prescription}" var="patient">
        <tr>
            <td><c:out value="${patient.id}" /></td>
            <td><c:out value="${patient.doctorprescriptionText}" /></td>
            <td><c:out value="${patient.patientName}" /></td>
            <td><c:out value="${patient.prescriptionText}" /></td>
        </tr>
    </c:forEach>
    </tbody>
</table><br>
</body>
</html>
