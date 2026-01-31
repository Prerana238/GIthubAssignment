<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Participant | Iron Lady</title>

    <style>
        body {
            font-family: "Segoe UI", Tahoma, Arial, sans-serif;
            background: linear-gradient(135deg, #f3e5f5, #ede7f6);
            margin: 0;
            padding: 0;
        }

        /* Top bar for Home button */
        .top-bar {
            position: fixed;
            top: 20px;
            right: 30px;
        }

        .home-btn {
            text-decoration: none;
            background: #6a1b9a;
            color: #ffffff;
            padding: 10px 18px;
            border-radius: 20px;
            font-size: 14px;
            font-weight: 600;
            box-shadow: 0 6px 15px rgba(0,0,0,0.15);
            transition: all 0.3s ease;
        }

        .home-btn:hover {
            background: #4a148c;
            transform: translateY(-2px);
        }

        .container {
            width: 420px;
            margin: 90px auto; /* slight adjustment for top button */
            padding: 30px;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #6a1b9a;
            margin-bottom: 25px;
        }

        label {
            font-weight: 600;
            display: block;
            margin-top: 14px;
            color: #333;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 14px;
        }

        input:focus, select:focus {
            outline: none;
            border-color: #6a1b9a;
            box-shadow: 0 0 0 2px rgba(106,27,154,0.15);
        }

        button {
            margin-top: 25px;
            width: 100%;
            padding: 12px;
            background: #6a1b9a;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        button:hover {
            background: #4a148c;
        }

        .back-link {
            text-align: center;
            margin-top: 15px;
        }

        .back-link a {
            text-decoration: none;
            color: #6a1b9a;
            font-size: 14px;
        }
    </style>
</head>

<body>

<!-- Home Button -->
<div class="top-bar">
    <a href="index.jsp" class="home-btn">🏠 Home</a>
</div>

<div class="container">
    <h2>Add Participant</h2>

    <form action="addParticipant" method="post">

        <label>Name</label>
        <input type="text" name="name" required>

        <label>Email</label>
        <input type="email" name="email" required>

        <label>Background</label>
        <input type="text" name="background"
               placeholder="Engineering, MBA, Career Break" required>

        <label>Program</label>
        <select name="programId" required>
            <option value="">-- Select Program --</option>
            <option value="1">Women in Tech Leadership</option>
            <option value="2">Career Reboot Program</option>
            <option value="3">Startup Leadership</option>
            <option value="4">Executive Presence</option>
            <option value="5">AI & Technology Foundations</option>
        </select>

        <label>Status</label>
        <select name="status" required>
            <option value="Applied">Applied</option>
            <option value="Selected">Selected</option>
            <option value="Active">Active</option>
            <option value="Completed">Completed</option>
        </select>

        <button type="submit">Add Participant</button>
    </form>

    <div class="back-link">
        <a href="listParticipants">← Back to Participants List</a>
    </div>
</div>

</body>
</html>
