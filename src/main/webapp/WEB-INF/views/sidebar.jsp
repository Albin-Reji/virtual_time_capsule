<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sidebar</title>
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
            background-color: #f9f9f9;
            color: #333;
        }

        .sidebar {
            width: 250px;
            background-color: #805AD5;
            color: white;
            min-height: 100vh;
            padding: 20px;
            flex-shrink: 0;
        }

        .sidebar h2 {
            font-size: 22px;
            font-weight: 700;
            margin-bottom: 30px;
        }

        .sidebar a {
            text-decoration: none;
            color: white;
            font-size: 16px;
            display: block;
            margin: 15px 0;
            padding: 10px 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .sidebar a:hover {
            background-color: #673ab7;
        }

        @media (max-width: 768px) {
            .sidebar {
                width: 100%;
                height: auto;
                padding: 15px;
                position: relative;
            }

            .sidebar a {
                font-size: 16px;
                padding: 8px 12px;
            }
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>Virtual Time Capsule</h2>
        <a href="/">Home</a>
        <a href="/profile">Profile</a>
        <a href="/${username}/${email}/my-capsules">My Time Capsules</a>
		<a href="/${username}/${email}/my-expired-capsules">My Expired Capsules</a>
        <a href="/${username}/${email}/about">About</a>
        <a href="/logout">Logout</a>
    </div>
</body>
</html>
