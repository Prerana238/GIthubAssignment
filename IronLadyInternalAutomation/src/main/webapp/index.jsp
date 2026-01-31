<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iron Lady Internal Automation</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <style>
        /* General reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Roboto', sans-serif;
        }

        body {
            background: linear-gradient(135deg, #f8f1ff, #ffe6f0);
            color: #333;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .container {
            background: white;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            padding: 40px 50px;
            max-width: 500px;
            width: 100%;
            text-align: center;
        }

        h1 {
            font-family: 'Montserrat', sans-serif;
            font-weight: 700;
            font-size: 1.8rem;
            color: #6a1b9a;
            margin-bottom: 30px;
        }

        h1 span {
            font-size: 1.2rem;
            display: block;
            font-weight: 400;
            color: #8e24aa;
            margin-top: 5px;
        }

        ul {
            list-style: none;
        }

        li {
            margin: 20px 0;
        }

        a {
            display: block;
            text-decoration: none;
            background: linear-gradient(90deg, #ff80ab, #ea80fc);
            color: white;
            padding: 15px 25px;
            border-radius: 10px;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        a:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 15px rgba(0,0,0,0.2);
        }

        /* Decorative image on top (optional) */
       .logo {
            width: 170px; /* Increased from 80px */
            height: auto; /* Maintains aspect ratio */
            margin-bottom: 60px;
            display: inline-block; /* Ensures it centers correctly in the container */
            filter: drop-shadow(0 4px 6px rgba(0,0,0,0.1)); /* Optional: adds a soft shadow to pop against the white */
        }
    </style>
</head>
<body>
    <div class="container">
        <img src="lady.png" alt="Logo" class="logo">
        <h1>Iron Lady <span>Internal Automation</span></h1>
        <ul>
            <li><a href="addParticipant.jsp">Add Participant</a></li>
            <li><a href="listParticipants">View Participants</a></li>
        </ul>
    </div>
</body>
</html>
