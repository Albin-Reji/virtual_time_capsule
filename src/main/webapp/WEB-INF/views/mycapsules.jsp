<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Capsules</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f3f4f6;
            color: #333;
        }
        h1 {
            text-align: center;
            color: #444;
        }
        .capsule-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            margin-top: 20px;
        }
        .headcapsule {
            color: #805AD5;
        }
        .capsule {
            background-color: #ffffff;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 320px;
            transition: transform 0.2s, box-shadow 0.2s;
        }
        .capsule:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .capsule h3 {
            margin-bottom: 10px;
            color: #222;
            font-size: 1.2em;
        }
        .capsule p {
            margin: 8px 0;
            color: #555;
            font-size: 0.95em;
        }
        .capsule .content {
            font-style: italic;
            color: #666;
        }
        .purple-text {
            color: #805AD5; /* Purple color for specific text */
        }
        .back-btn {
            background-color: #805AD5;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 1em;
            display: inline-block;
            margin-bottom: 20px;
        }
        .back-btn:hover {
            background-color: #6a479f;
        }
        @media (max-width: 768px) {
            .capsule {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <a href="javascript:history.back()" class="back-btn">Back</a> <!-- Back Button -->
    <h1 class="headcapsule">My Capsules</h1>
    <div class="capsule-container">
        <c:forEach var="capsule" items="${capsules}">
            <div class="capsule">
                <h4><strong class="purple-text">Subject:</strong> ${capsule.subject}</h4>
                <p><strong class="purple-text">Sender:</strong> ${capsule.senderEmail}</p>
                <p><strong class="purple-text">Receiver:</strong> ${capsule.recieverEmail}</p>
                <p><strong class="purple-text">Message:</strong> <span class="content">${capsule.message}</span></p>
                <p><strong class="purple-text">Scheduled Send Time:</strong> ${capsule.sendTime}</p>
            </div>
        </c:forEach>
    </div>
</body>
</html>
