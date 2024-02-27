<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Saved</title>
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

        h1 {
            color: #007BFF;
        }

        p {
            margin-top: 20px;
            font-size: 18px;
        }

        /* Styled button */
        button {
            padding: 10px 20px;
            background-color: #007BFF;
            color: #fff;
            border: 2px solid #007BFF; /* Add border */
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease, border-color 0.3s ease; /* Add border-color transition */
        }

        button:hover {
            background-color: #007BFF; /* Keep the same background color */
            color: #007BFF; /* Change text color to match background */
            border-color: #fff; /* Change border color on hover */
        }

        a {
            text-decoration: none; /* Remove underline from anchor tag */
            margin-top: 20px; /* Add margin to separate from the text */
        }

        /* Hover effect for anchor tag */
        a:hover button {
            background-color: #fff; /* Change background color to match text color */
            color: #007BFF; /* Change text color to original color */
            border-color: #007BFF; /* Change border color on hover */
        }
    </style>
</head>
<body>

<h1>Your Appointment confirmed</h1>
<a href="doctor">
    <button type="button">Home</button>
</a>

</body>
</html>
