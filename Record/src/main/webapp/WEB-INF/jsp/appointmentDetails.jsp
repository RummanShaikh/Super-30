<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display Patients</title>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Alegreya+Sans&display=swap");
        body {
            background: url('https://img.freepik.com/free-photo/blur-hospital_1203-7972.jpg?size=626&ext=jpg&ga=GA1.1.954076464.1703259308&semt=ais') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
            display: grid;
            place-content: center;
            min-height: 100vh;
            /*background-color: #fff;*/
        }

        .content {
            max-width: 800px;
            margin: 20px;
        }

        ul {
            position: fixed;
            top: 0;
            width: 100%;
            display: flex;
            justify-content: center; /* Center the icons horizontally */
            align-items: center;
            background-color: #1e1e1e;
            padding: 10px;
            border-radius: 10px;
            gap: 10px;
        }

        ul li {
            position: relative;
            list-style: none;
            width: 72px;
            height: 50px;
            border-radius: 72px;
            background: #1e1e1e;
            cursor: pointer;
            display: flex;
            flex-direction: column; /* Stack icon and text vertically */
            align-items: center;
            justify-content: center;
            box-shadow: 0 0 0 2px #fff;
            transition: 300ms;
        }


        ul li:hover {
            width: 160px;
            box-shadow: 0 0 0 2px var(--bg-color);
        }

        ul li::before {
            content: "";
            position: absolute;
            inset: 0;
            border-radius: 32px;
            background: var(--bg-color);
            opacity: 0;
            transition: 300ms;
        }

        ul li:hover::before {
            opacity: 1;
        }

        ul li span {
            position: absolute;
        }

        ul li i {
            color: #fff;
            font-size: 2em;
            transition: 300ms;
            transition-delay: 150ms;
        }

        ul li:hover i {
            transform: scale(0);
            color: #fff;
            transition-delay: 0s;
        }

        ul li .text {
            color: #1e1e1e;
            font-size: 1.5em;
            z-index: 1;
            text-transform: uppercase;
            font-weight: 400;
            letter-spacing: 0.024em;
            opacity: 0;
            transition: 300ms;
            letter-spacing: -0.125px;
        }

        ul li:hover .text {
            opacity: 1;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Alegreya Sans", sans-serif;
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

<ul class="navbar">
    <a href="http://localhost:8888/record/display">
        <li style="--bg-color: #a9c700;">

            <span class="icon"><i class="ph-house"></i></span>
            <span class="text">Home</span>
        </li>
    </a>
    <li style="--bg-color: #E9724C;">
        <span class="icon"><i class="ph-user"></i></span>
        <span class="text">About</span>
    </li>
    <a href="http://localhost:8888/record/prescription">
        <li style="--bg-color: #C5283D;">

            <span class="icon"><i class="ph ph-prescription"></i></span>
            <span class="text">Prescription</span>
        </li>
    </a>
    <a href="http://localhost:8888/record/appointment">
        <li style="--bg-color: #54bcce;">

            <span class="icon"><i class="ph ph-first-aid"></i></span>
            <span class="text">Appointment</span>
        </li>
    </a>
    <li style="--bg-color: #0c68a5;">
        <span class="icon"><i class="ph-phone"></i></span>
        <span class="text">Contact</span>
    </li>
<a href="http://localhost:8888/login/">
    <li style="--bg-color: #0c68a5;">
        <span class="icon"><i class="ph ph-sign-out"></i></span>
        <span class="text">Logout</span>
    </li>
</a>
</ul>


<%--<h1>Display Appointments</h1>--%>
<%--<table>--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th>ID</th>--%>
<%--        <th>Date</th>--%>
<%--        <th>Doctor Name</th>--%>
<%--        <th>Patient Name</th>--%>
<%--        <th>Status</th>--%>
<%--        <th>Time</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <c:forEach items="${appointments}" var="patient">--%>
<%--        <tr>--%>
<%--            <td><c:out value="${patient.id}" /></td>--%>
<%--            <td><c:out value="${patient.date}" /></td>--%>
<%--            <td><c:out value="${patient.doctor_name}" /></td>--%>
<%--            <td><c:out value="${patient.patient_name}" /></td>--%>
<%--            <td><c:out value="${patient.status}" /></td>--%>
<%--            <td><c:out value="${patient.time}" /></td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--    </tbody>--%>
<%--</table><br>--%>

<%--<h1>Display Prescription</h1>--%>
<%--<table>--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th>ID</th>--%>
<%--        <th>Prescription</th>--%>
<%--        <th>Patient Name</th>--%>
<%--        <th>Symptoms</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <c:forEach items="${prescription}" var="patient">--%>
<%--        <tr>--%>
<%--            <td><c:out value="${patient.id}" /></td>--%>
<%--            <td><c:out value="${patient.doctorprescriptionText}" /></td>--%>
<%--            <td><c:out value="${patient.patientName}" /></td>--%>
<%--            <td><c:out value="${patient.prescriptionText}" /></td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--    </tbody>--%>
<%--</table><br>--%>

<%--<h1>Doctors</h1>--%>
<%--<table>--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th>ID</th>--%>
<%--        <th>Name</th>--%>
<%--        <th>Specialization</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <c:forEach items="${doctors}" var="patient">--%>
<%--        <tr>--%>
<%--            <td><c:out value="${patient.id}" /></td>--%>
<%--            <td><c:out value="${patient.name}" /></td>--%>
<%--            <td><c:out value="${patient.specification}" /></td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--    </tbody>--%>
<%--</table><br>--%>
<%--<a href="patient">--%>
<%--    <button type="button">Add Doctor</button>--%>
<%--</a>--%>

<a href="prescription">
    <button type="button">Prescription</button>
</a><br>
<a href="appointment">
    <button type="button">Appointment</button>
</a><br>
<a href="doctors">
    <button type="button">See Doctors</button>
</a>
</body>
</html>
