<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Patient Information Form</title>
    <style>
        body {
            background-image: url('background.jpg'); /* Replace with your actual image */
            background-size: cover;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            overflow: hidden;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5); /* Adjust the alpha value for the desired level of blur */
            z-index: -1;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            z-index: 1;
        }

        form {
            text-align: center;
        }

        label {
            display: block;
            margin: 10px 0;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<div class="overlay"></div>
<h2>Doctor List</h2>

<table border="1">
    <thead>
    <tr>
        <th>Name</th>
        <th>Speciality</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="doctor" items="${doctors}">
        <tr>
            <td>${doctor.name}</td>
            <td>${doctor.specification}</td>
            <!-- Add more columns if needed -->
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="container">
    <h2>Patient Information Form</h2>
    <form action="submitAppointment" method="post"> <!-- Replace with your form processing logic -->
        <label for="patientName">Patient Name:</label>
        <input type="text" id="patientName" name="patientName" required>

        <label for="doctorName">Select Doctor:</label>
        <select id="doctorName" name="doctorName" required>
            <c:forEach var="doc" items="${doctors}">
                <option value="${doc.name}">${doc.name}</option>
            </c:forEach>
            <!-- Add more options as needed -->
        </select>

        <label for="appointmentDate">Select Date:</label>
        <input type="date" id="appointmentDate" name="appointmentDate" required>

        <button type="submit">Request Appointment</button>
    </form>
</div>

</body>
</html>
