<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Doctor Information Form</title>
    <style>
        body {
            background-color: #f5f5f5; /* Set background color to light grey */
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
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

        form {
            text-align: center;
        }

        label {
            display: block;
            margin: 10px 0;
            color: #666; /* Set label color to grey */
        }

        input, select {
            width: calc(100% - 22px);
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc; /* Set border color to light grey */
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
            transition: background-color 0.3s ease, color 0.3s ease, border-color 0.3s ease; /* Add border-color transition */
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
    <h2>Doctor Form</h2>
    <form action="submitdoctor" method="post"> <!-- Replace with your form processing logic -->
        <label for="name">Doctor Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="specification">Specification</label>
        <input type="text" id="specification" name="specification" required>

        <button type="submit">Add Doctor</button>
    </form>
</div>

</body>
</html>
