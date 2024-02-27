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

<h1>Doctors</h1>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Role</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${lists}" var="patient">
        <tr>
            <td><c:out value="${patient.id}" /></td>
            <td><c:out value="${patient.name}" /></td>
            <td><c:out value="${patient.email}" /></td>
            <td><c:out value="${patient.role}" /></td>
        </tr>
    </c:forEach>
    </tbody>
</table><br>

<div class="overlay"></div>
<div class="container">
    <h2>Doctor Form</h2>
    <form action="confirmDoctor" method="post"> <!-- Replace with your form processing logic -->
        <label for="confirmingId">Enter Id to Confirm</label>
        <input type="text" id="confirmingId" name="confirmingId" required>

        <label for="confirmingrole">Select Role:</label>
        <select id="confirmingrole" name="confirmingrole" required>
            <option value="">Select One</option>
            <option value="patient">Patient</option>
            <option value="doctor">Doctor</option>
        </select>


        <button type="submit">Confirm Role</button>
    </form>
</div>

</body>
</html>
