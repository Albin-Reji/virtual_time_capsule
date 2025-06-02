<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: flex-start; /* Align to the start of the page */
            align-items: center;
            min-height: 100vh;
            margin: 0;
            background-color: #f4f4f9;
            position: relative;
            padding-left: 250px; /* Ensure space for sidebar */
        }

        .profile-container {
			left: 2%;
            display: flex;
            justify-content: center; /* Center the profile card horizontally */
            align-items: center;
            width: 100%;
            margin-left: 0px; /* Space between sidebar and card */
        }

        .back-button {
            position: absolute;
            top: 15%;
            left: 42%;
            transform: translate(-50%, -50%);
            background-color: #805AD5;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
        }

        .back-button:hover {
            background-color: #673ab7;
        }

        .profile-card {
            width: 300px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            text-align: center;
            padding: 20px;
            z-index: 1;
        }

        .profile-header {
            margin-bottom: 15px;
            display: flex;
            justify-content: center; /* Center the content horizontally */
            align-items: center;     /* Center the content vertically */
        }

        .profile-picture {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid #ddd;
            background-color: #f2f2f2; /* Light gray for default image */
        }

        .profile-picture.placeholder {
            background-color: #3498db; /* Blue color for placeholder */
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 24px;
        }

        .profile-details {
            margin-top: 15px;
        }

        .profile-details h2 {
            margin: 0;
            font-size: 24px;
            color: #333;
        }

        .profile-details p {
            margin: 10px 0 0;
            font-size: 16px;
            color: #777;
        }
    </style>
</head>
<body>
    <%@ include file="sidebar.jsp" %>

    <div class="profile-container">
        <div class="profile-card">
            <a href="/user" class="back-button">Back</a>
            <div class="profile-header">
                <!-- Add placeholder text if no image -->
                <div class="profile-picture ${empty imageUrl ? 'placeholder' : imageUrl}">
                    <img src="${empty imageUrl ? 'U' : imageUrl}">
                </div>
            </div>
            <div class="profile-details">
                <h2>${username}</h2>
                <p>Email: ${email}</p>
            </div>
        </div>
    </div>

</body>
</html>
