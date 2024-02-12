<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
    <title>Appointments</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        .container {
            margin-top: 20px;
        }

        .container label {
            display: block;
            margin-bottom: 5px;
        }

        .container input {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        .container button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .container button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<h1>Appointments</h1>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Patient Name</th>
        <th>Doctor Name</th>
        <th>Appointment Date</th>
        <th>Appointment Time</th> <!-- Added time column header -->
        <th>Status</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="appointment" items="${appointments}">
        <tr>
            <td>${appointment.id}</td>
            <td>${appointment.patient_name}</td>
            <td>${appointment.doctor_name}</td>
            <td><fmt:formatDate value="${appointment.date}" pattern="dd-MM-yyyy" /></td>
            <td>${appointment.time}</td> <!-- Display time -->
            <td>${appointment.status}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<div class="container">
    <form action="confirmAppointment" method="post"> <!-- Replace with your form processing logic -->
        <label for="confirmingId">Enter Id to Confirm</label>
        <input type="text" id="confirmingId" name="confirmingId" required>

        <label for="confirmingTime">Enter Time to Confirm</label>
        <input type="text" id="confirmingTime" name="confirmingTime" placeholder="HH:mm" required>

        <button type="submit">Confirm Appointment</button>
    </form>
</div>

</body>
</html>
