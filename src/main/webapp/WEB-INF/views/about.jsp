<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Virtual Time Capsule</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7fc;
            color: #333;
            margin: 0;
            padding: 0;
        }

        /* Back Button Styling */
        .back-btn {
            position: absolute;
            top: 20px;
            left: 20px;
            background-color: #805AD5;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 1.2em;
            display: inline-block;
        }

        .back-btn:hover {
            background-color: #6a479f;
        }

        header {
            background-color: #805AD5;
            color: white;
            padding: 15px 0;
            text-align: center;
            margin-top: 80px; /* to create space for the back button */
        }

        h1 {
            font-size: 2.5em;
            margin: 0;
        }

        .container {
            padding: 40px 10%;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
            border-radius: 10px;
        }

        .section-title {
            color: #805AD5;
            font-size: 1.8em;
            margin-bottom: 20px;
        }

        .about-content {
            font-size: 1.2em;
            line-height: 1.6;
            color: #555;
            text-align: justify;
            margin-bottom: 30px;
        }

        .features {
            display: flex;
            justify-content: space-between;
            gap: 20px;
            margin-top: 30px;
        }

        .feature-box {
            background-color: #fff;
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 30%;
            text-align: center;
        }

        .feature-box h3 {
            color: #805AD5;
            font-size: 1.4em;
            margin-bottom: 10px;
        }

        .feature-box p {
            font-size: 1.1em;
            color: #555;
        }

        footer {
            text-align: center;
            padding: 20px;
            background-color: #805AD5;
            color: white;
            margin-top: 40px;
        }

        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            .features {
                flex-direction: column;
                align-items: center;
            }

            .feature-box {
                width: 80%;
                margin-bottom: 20px;
            }
        }
    </style>
</head>
<body>
    <a href="javascript:history.back()" class="back-btn">Back</a> <!-- Back Button -->

    <header>
        <h1>About Virtual Time Capsule</h1>
    </header>

    <div class="container">
        <section>
            <h2 class="section-title">What is a Virtual Time Capsule?</h2>
            <p class="about-content">
                A Virtual Time Capsule is a digital repository where individuals can store messages, videos, photos, or any form of content to be revealed at a later date. It’s like sending a message to your future self, your family, or even to the world, preserving memories and thoughts that are meant to be seen in the future.
            </p>
        </section>

        <section>
            <h2 class="section-title">How It Works</h2>
            <p class="about-content">
                To use the Virtual Time Capsule, simply create your capsule, upload your content, set a date when you’d like the capsule to be opened, and then wait for the future to arrive. Once the set date is reached, the capsule’s contents are revealed, allowing you to relive memories, reflect on past thoughts, and even surprise yourself or others with something from the past.
            </p>
        </section>

        <section>
            <h2 class="section-title">Why Use a Virtual Time Capsule?</h2>
            <p class="about-content">
                A Virtual Time Capsule allows you to store memories, ideas, and messages that are meant to be revealed at a specific time in the future. It can be a meaningful way to commemorate milestones, share life updates with loved ones, or even leave a legacy for future generations.
            </p>
        </section>

        <section class="features">
            <div class="feature-box">
                <h3>Preserve Memories</h3>
                <p>Store your photos, videos, and thoughts that can be cherished and relived at a later date.</p>
            </div>
            <div class="feature-box">
                <h3>Surprise Your Future Self</h3>
                <p>Send a message or create a memory for your future self to open and enjoy when the time comes.</p>
            </div>
            <div class="feature-box">
                <h3>Share With Loved Ones</h3>
                <p>Share personal messages, updates, or surprises with friends and family to be revealed at the perfect moment.</p>
            </div>
        </section>
    </div>

    <footer>
        <p>&copy; 2024 Virtual Time Capsule. All rights reserved.</p>
    </footer>
</body>
</html>
