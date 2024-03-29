<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Information Form</title>
    <style>
        body {
            background-color: #f5f5f5;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #666;
        }

        input, select {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        button {
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

        button:hover {
            background-color: #ffffff; /* Change background color on hover */
            color: #007BFF; /* Change text color on hover */
            border-color: #007BFF; /* Change border color on hover */
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Patient Information Form</h2>
    <h2>Welcome, ${userName}</h2>
    <form action="submitAppointment" method="post">
        <label for="doctorName">Select Doctor:</label>
        <select id="doctorName" name="doctorName" required>
            <c:forEach var="doc" items="${doctors}">
                <option value="${doc.name}">${doc.name}</option>
            </c:forEach>
        </select>

        <label for="appointmentDate">Select Date:</label>
        <input type="date" id="appointmentDate" name="appointmentDate" required>

        <button type="submit">Request Appointment</button>
    </form>
</div>
<%
    boolean appointmentExists = request.getParameter("appointmentExists") != null;
    if (appointmentExists) {
%>
<script>
    alert("Appointment already exists!");
</script>
<%
    }
%>
</body>
</html>
