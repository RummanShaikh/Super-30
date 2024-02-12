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
    <h1>Display Patients</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Mobile Number</th>
                <th>Doctor</th>
                <th>Speciality</th>
                <th>Prescription</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${patients}" var="patient">
                <tr>
                    <td><c:out value="${patient.id}" /></td>
                    <td><c:out value="${patient.name}" /></td>
                    <td><c:out value="${patient.email}" /></td>
                    <td><c:out value="${patient.number}" /></td>
                    <td><c:out value="${patient.doctor}" /></td>
                    <td><c:out value="${patient.speciality}" /></td>
                    <td><c:out value="${patient.prescription}" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
