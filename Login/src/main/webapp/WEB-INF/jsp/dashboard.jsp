<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <script src="https://unpkg.com/phosphor-icons"></script>
    <link rel="stylesheet" href="style.css">
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Alegreya+Sans&display=swap");

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Alegreya Sans", sans-serif;
        }

        body {
            display: grid;
            place-content: center;
            min-height: 100vh;
            background-color: #fff; /* Set the background color for the remaining content */
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
    <a href="http://localhost:8080/welcome">
    <li style="--bg-color: #C5283D;">

        <span class="icon"><i class="ph ph-prescription"></i></span>
        <span class="text">Prescription</span>
    </li>
    </a>
    <a href="http://localhost:8888/appointment/patient">
    <li style="--bg-color: #54bcce;">

        <span class="icon"><i class="ph ph-first-aid"></i></span>
        <span class="text">Appointment</span>
    </li>
    </a>
    <li style="--bg-color: #0c68a5;">
        <span class="icon"><i class="ph-phone"></i></span>
        <span class="text">Contact</span>
    </li>
</ul>

<div class="content">
    <!-- Your additional content goes here -->
    <a href="/login/">Logout</a>
</div>
</body>

</html>