<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard | Iron Lady</title>

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

        h2 {
            text-align: center;
            margin-top: 90px;
            color: #4a148c;
        }

        .container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 25px;
            margin-top: 40px;
        }

        .card {
            background: white;
            padding: 25px;
            width: 180px;
            text-align: center;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-6px);
            box-shadow: 0 15px 35px rgba(0,0,0,0.15);
        }

        .number {
            font-size: 30px;
            font-weight: bold;
            color: #6a1b9a;
        }

        .label {
            margin-top: 10px;
            color: #555;
            font-size: 14px;
        }

        .links {
            text-align: center;
            margin: 45px 0 30px;
        }

        .links a {
            margin: 0 12px;
            text-decoration: none;
            font-weight: 600;
            color: #6a1b9a;
            padding: 8px 14px;
            border-radius: 20px;
            transition: background 0.3s ease, color 0.3s ease;
        }

        .links a:hover {
            background: #6a1b9a;
            color: white;
        }
    </style>
</head>

<body>

<!-- Home Button -->
<div class="top-bar">
    <a href="index.jsp" class="home-btn">🏠 Home</a>
</div>

<h2>Iron Lady – Internal Dashboard</h2>

<div class="container">
    <div class="card">
        <div class="number">${total}</div>
        <div class="label">Total Participants</div>
    </div>
    <div class="card">
        <div class="number">${applied}</div>
        <div class="label">Applied</div>
    </div>
    <div class="card">
        <div class="number">${selected}</div>
        <div class="label">Selected</div>
    </div>
    <div class="card">
        <div class="number">${active}</div>
        <div class="label">Active</div>
    </div>
    <div class="card">
        <div class="number">${completed}</div>
        <div class="label">Completed</div>
    </div>
</div>

<div class="links">
    <a href="addParticipant.jsp">Add Participant</a> |
    <a href="listParticipants">View Participants</a>
</div>

</body>
</html>
