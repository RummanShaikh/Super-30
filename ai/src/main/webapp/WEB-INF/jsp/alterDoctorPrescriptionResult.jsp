<!-- alterDoctorPrescriptionResult.jsp -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alter Doctor Prescription Result</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        div {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            margin-bottom: 20px;
            width: 300px;
        }

        h2 {
            color: #007BFF;
        }

        p {
            margin: 10px 0;
        }

        .return-button {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            transition: background-color 0.3s ease, color 0.3s ease;
            margin-top: 10px;
            font-family: 'Catamaran', sans-serif;
        }

        .return-button:hover {
            background-color: #fff;
            color: #007BFF;
        }

        div[th\:if="${errorMessage}"] {
            background-color: #ffcccc;
            color: #cc0000;
            padding: 10px;
            border-radius: 8px;
        }

        /* Added styles for consistency with the previous code */
        div:hover {
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>

<div>
    <h2>Doctor Prescription Altered</h2>
    <p>Prescription ID: ${prescription.id}</p>
    <br>
    <a href="welcome" class="return-button">Return</a>
