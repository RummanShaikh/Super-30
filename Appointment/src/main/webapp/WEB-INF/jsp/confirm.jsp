<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
    <title>Appointments</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa; /* Set background color to light grey */
            margin: 0;
            padding: 20px;
        }

        h1 {
            color: #007bff; /* Set header color to blue */
            margin-bottom: 20px;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff; /* Set table background color to white */
            border-radius: 5px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2; /* Set header row background color to light grey */
            color: #333; /* Set header row text color to dark grey */
        }

        tr:nth-child(even) {
            background-color: #f8f9fa; /* Set even row background color to slightly lighter grey */
        }

        .container {
            margin-top: 20px;
            text-align: center;
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

        .btn {
            padding: 10px 20px;
            background-color: #007BFF;
            color: #fff;
            border: 2px solid #007BFF; /* Add border */
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease, border-color 0.3s ease; /* Add transition effect */
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

        <button class="btn" type="submit">Confirm Appointment</button>
    </form>
</div>

</body>
</html>
