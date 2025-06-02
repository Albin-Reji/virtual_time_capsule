<%@ include file="sidebar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Roboto', sans-serif;
        }

        body {
            display: flex;
            min-height: 100vh;
            background-color: #f3f4f6;
            color: #333;
        }

        .content {
            flex: 1;
            padding: 40px;
            background-color: #ffffff;
            border-radius: 12px;
            margin: 20px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .content h1 {
            font-size: 28px;
            color: #4c51bf;
            margin-bottom: 25px;
            text-align: center;
        }

        .message-box {
            max-width: 600px;
            margin: 0 auto;
            background-color: #e8f4ea;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .message-box h2 {
            color: #38a169;
            font-size: 24px;
        }

        .message-box p {
            color: #555;
            font-size: 16px;
            margin-top: 10px;
        }

        .button {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 24px;
            background-color: #38a169;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #2f855a;
        }

        @media (max-width: 768px) {
            .content {
                margin: 10px;
                padding: 20px;
            }

            .message-box {
                padding: 15px 20px;
            }
        }
    </style>
</head>
<body>
    <div class="content">
        <h1>Message Sent Successfully!</h1>
        <div class="message-box">
            <h2>Your message has been sent successfully.</h2>
            <p>Thank you for reaching out. We will get back to you as soon as possible.</p>
            <a href="/user" class="button">Back</a>
        </div>
    </div>
</body>
</html>
