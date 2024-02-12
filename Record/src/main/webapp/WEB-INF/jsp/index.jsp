<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Patient Record</title>
    <style>
        body {
            background: url('https://img.freepik.com/free-photo/blur-hospital_1203-7972.jpg?size=626&ext=jpg&ga=GA1.1.954076464.1703259308&semt=ais') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: #333;
            font-size: 55px; 
            text-decoration: underline; 
            padding-top: 30px;
        }

        form {
            margin-top: 10px;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            margin: 10% auto;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50; /* Green color */
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049; 
        }
    </style>
</head>
<body>
    <h1>Patient Records</h1>
    <form action="addPatient" method="post">
       
        <input type="text" name="name" placeholder="Name">
        <br>
        <input type="text" name="email" placeholder="Email">
        <br>
        <input type="text" name="number" placeholder="Mobile Number">
        <br>
        <input type="text" name="doctor" placeholder="Doctor">
        <br>
        <input type="text" name="speciality" placeholder="Speciality">
        <br>
        <input type="text" name="prescription" placeholder="Prescription">
        <br>
        <button type="submit">Add Patient</button>
    </form>
</body>
</html>
