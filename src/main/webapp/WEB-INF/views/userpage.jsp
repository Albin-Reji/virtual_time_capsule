<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Page</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
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

        .email-compose {
            max-width: 600px;
            margin: 0 auto;
            background-color: #f9f9f9;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }

        .email-compose label {
            display: block;
            font-weight: 500;
            margin-bottom: 8px;
            color: #555;
        }

        .email-compose input,
        .email-compose textarea {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 6px;
            font-size: 16px;
            background-color: #fdfdfd;
        }

        .email-compose textarea {
            resize: none;
        }

        .email-compose button {
            display: inline-block;
            width: 100%;
            padding: 12px;
            background-color: #805AD5;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .email-compose button:hover {
            background-color: #3c409e;
        }

        @media (max-width: 768px) {
            .content {
                margin: 10px;
                padding: 20px;
            }

            .email-compose {
                padding: 15px 20px;
            }
        }
    </style>
</head>
<body>
	<%@ include file="sidebar.jsp" %>
    <!-- Main Content -->
    <div class="content">
        <h1>Welcome ${username}</h1>
        <form class="email-compose" action="/${email}/store-message" method="POST" enctype="multipart/form-data">
            <label for="recipient">To:</label>
            <input type="email" id="recipient" name="recipient" placeholder="Recipient's email" required>
            
            <label for="subject">Subject:</label>
            <input type="text" id="subject" name="subject" placeholder="Enter subject" required>
            
            <label for="message">Message:</label>
            <textarea id="message" name="message" placeholder="Type your message here..." rows="8" required></textarea>
            

            <!-- Send Time Field -->
            <label for="sendTime">Schedule this message @:</label>
            <input type="datetime-local" id="sendTime" name="sendTime" required>

            <button type="submit">Send</button>
        </form>
    </div>
</body>
</html>
