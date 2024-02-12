<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chat with AI</title>
    <link href="https://fonts.googleapis.com/css2?family=Catamaran&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <style>
        /* Reset some default styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Catamaran', sans-serif; /* Updated font-family to Catamaran */
        }

        /* Style for the chat container */
        .chat-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f0f0f0;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        /* Style for user messages */
        .user-message {
            background-color: #007BFF;
            color: #fff;
            border-radius: 10px;
            padding: 10px 20px;
            margin: 10px 0;
            clear: both;
            float: left;
            max-width: 70%;
        }

        /* Style for AI messages */
        .ai-message {
            background-color: #fff;
            color: #333;
            border-radius: 10px;
            padding: 10px 20px;
            margin: 10px 0;
            clear: both;
            float: left;
            max-width: 70%;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        /* Style for the chat input and submit button */
        .chat-input {
            width: 70%;
            padding: 10px 15px;
            border: 2px solid #007BFF;
            border-radius: 5px;
            margin-top: 10px;
            font-size: 16px;
        }

        .chat-submit,
        .go-back {
            padding: 10px 20px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .chat-submit:hover,
        .go-back:hover {
            background-color: #0056b3; /* Darker shade on hover */
        }

        /* Clearfix for the chat messages */
        .clearfix::after {
            content: "";
            clear: both;
            display: table;
        }

        /* Optional: Style for the chat title */
        .chat-title {
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
        }

        /* Optional: Style for the chat response title */
        .response-title {
            font-size: 18px;
            margin-top: 20px;
        }

        /* Style for the go back button container */
        .go-back-container {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="chat-container">
    <h1 class="chat-title">Chat with our AI prescription model</h1>
    <hr>
    <div class="user-message">
        Start your message from here:
        <br>
        Mention the problems/symptoms which you are facing:
    </div>
    <!-- You can dynamically generate these user and AI message elements -->
    <form action="/api/v1/ai/request" method="post">
        <div class="search">
            <input type="text" id="userInput" name="message" class="chat-input">
            <button type="submit" class="chat-submit"><i class="fa fa-search"></i></button>
        </div>
    </form>
    <div class="ai-message">
        AI response goes here:
    </div>
    <div class="go-back-container">
        <button class="go-back" onclick="goBack()"><i class="fa fa-arrow-left"></i> Go Back</button>
    </div>
    <hr style="margin-top: 20px; margin-bottom: 10px;">
    <p>${response}</p>
</div>

<script>
    function goBack() {
        // Replace 'welcome.jsp' with the actual URL of your welcome JSP page
        window.location.href = 'http://localhost:8080/welcome';
    }
</script>

</body>
</html>
