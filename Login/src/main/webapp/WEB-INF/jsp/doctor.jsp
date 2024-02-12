<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .button-container {
            text-align: center;
        }

        .redirect-button {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            margin-right: 10px;
        }

        .redirect-button:hover {
            background-color: #45a049;
        }
    </style>
    <title>Redirect Example</title>
</head>
<body>

<div class="button-container">
    <button class="redirect-button" onclick="redirectToPage1()">Give precription</button>
    <button class="redirect-button" onclick="redirectToPage2()">check appointment</button>
</div>

<script>
    function redirectToPage1() {
        window.location.href = 'http://localhost:8080/alterDoctorPrescriptionForm'; // Replace with the actual URL of Page 1
    }

    function redirectToPage2() {
        window.location.href = 'http://localhost:6969/doctor'; // Replace with the actual URL of Page 2
    }
</script>

</body>
</html>
