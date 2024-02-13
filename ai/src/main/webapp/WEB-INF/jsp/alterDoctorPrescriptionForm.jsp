<%@ page import="java.sql.*" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prescription List</title>
    <link href="https://fonts.googleapis.com/css2?family=Catamaran:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Catamaran', sans-serif;
            background-color: #ecf0f1; /* Light gray background */
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            width: 300px;
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input,
        textarea,
        button {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 2px solid #3498db; /* Blue border color */
            border-radius: 5px;
            transition: border-color 0.3s ease; /* Add transition for border color */
        }

        input:hover,
        textarea:hover {
            border-color: #2980b9; /* Darker blue border color on hover */
        }

        button {
            background-color: #3498db; /* Blue color for button */
            color: #fff;
            cursor: pointer;
            border: none;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease; /* Add transition for background color and text color */
        }

        button:hover {
            background-color: #fff; /* White color on hover */
            color: #3498db; /* Blue text color on hover */
        }


        h2 {
            color: #2c3e50; /* Dark gray text color */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #3498db; /* Blue border color */
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #3498db; /* Blue color for header background */
            color: #fff;
        }

        hr {
            margin-top: 20px;
            width: 100%;
            border: 1px solid #ddd;
        }
    </style>
</head>
<body>

<form action="/alterDoctorPrescription" method="post">
    <label for="id">Prescription ID:</label>
    <input type="text" id="id" name="id" required>

    <label for="doctorprescriptionText">New Doctor Prescription Text:</label>
    <textarea id="doctorprescriptionText" name="doctorprescriptionText" required></textarea>

    <!-- Add a password field for the doctor -->
    <label for="doctorPassword">Doctor Password:</label>
    <input type="password" id="doctorPassword" name="doctorPassword" required>

    <button type="submit">Alter Doctor Prescription</button>
</form>

<h2>Prescriptions</h2>

<%
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
        stmt = con.createStatement();
        rs = stmt.executeQuery("SELECT * FROM prescription");

        // Display the table content
%>
<table border="1" width="100%">
    <tr>
        <th>Id</th>
        <th>Patient Name</th>
        <th>Prescription text</th>
        <th>Doctor's Prescription</th>
    </tr>

    <% while (rs.next()) { %>
    <tr>
        <td><%= rs.getLong("id") %></td>
        <td><%= rs.getString("patient_name") %></td>
        <td><%= rs.getString("prescription_text") %></td>
        <td><%= rs.getString("doctorprescription_text") %></td>
    </tr>
    <% } %>
</table>

<%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // Close resources
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>

<hr>

</body>
</html>
