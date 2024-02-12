<!-- displayPrescriptionResult.jsp -->
<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        body {
            font-family: 'Catamaran', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        section {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        header {
            margin-bottom: 20px;
        }

        h1 {
            color: #007BFF;
        }

        article {
            margin-top: 20px;
        }

        h2 {
            color: #007BFF;
        }

        p {
            margin-bottom: 10px;
        }

        .error {
            color: #dc3545;
        }

        .back-button {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            margin-top: 20px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .back-button:hover {
            background-color: #0056b3;
        }
    </style>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prescription Display Result</title>
</head>
<body>

<%@ page import="com.rumman.chatgpt.ai.entities.Prescription" %>

<%
    Prescription prescription = (Prescription) request.getAttribute("prescription");
    String errorMessage = (String) request.getAttribute("errorMessage");
%>

<section>
    <header>
        <h1>Prescription Display Result</h1>
    </header>

    <% if (prescription != null) { %>
    <article>
        <h2>Prescription ID: <%= prescription.getId() %></h2>
        <p>Patient Name: <%= prescription.getPatientName() %></p>
        <p>Prescription Text: <%= prescription.getPrescriptionText() %></p>
        <p>Doctor's Prescription Text: <%= prescription.getDoctorprescriptionText() %></p>
    </article>
    <% } else { %>
    <article>
        <p class="error"><%= errorMessage %></p>
    </article>
    <% } %>
    <br>
    <a href="welcome" class="back-button">Back</a>
</section>

</body>
</html>
