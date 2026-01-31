<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List, com.ironlady.model.Participant" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Participants List | Iron Lady</title>

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
            z-index: 10;
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

        .add-btn {
            display: block;
            width: 220px;
            margin: 25px auto;
            padding: 12px;
            text-align: center;
            background: #6a1b9a;
            color: white;
            text-decoration: none;
            border-radius: 25px;
            font-weight: 600;
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
            transition: all 0.3s ease;
        }

        .add-btn:hover {
            background: #4a148c;
            transform: translateY(-3px);
        }

        table {
            width: 92%;
            margin: 30px auto 50px;
            border-collapse: collapse;
            background-color: #ffffff;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 12px 30px rgba(0,0,0,0.12);
        }

        th, td {
            padding: 12px;
            text-align: center;
            font-size: 14px;
        }

        th {
            background-color: #6a1b9a;
            color: white;
            font-weight: 600;
        }

        tr:nth-child(even) {
            background-color: #f7f2fb;
        }

        tr:hover {
            background-color: #efe3f7;
        }

        a {
            text-decoration: none;
            font-weight: 600;
            margin: 0 6px;
        }

        .edit {
            color: #1565c0;
        }

        .delete {
            color: #c62828;
        }

        .edit:hover,
        .delete:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

<!-- Home Button -->
<div class="top-bar">
    <a href="index.jsp" class="home-btn">🏠 Home</a>
</div>

<h2>Participants List</h2>

<!-- unchanged: servlet call -->
<a href="addParticipant" class="add-btn">+ Add Participant</a>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Background</th>
        <th>Program ID</th>
        <th>Status</th>
        <th>Actions</th>
    </tr>

<%
    List<Participant> list =
            (List<Participant>) request.getAttribute("participants");

    if (list != null && !list.isEmpty()) {
        for (Participant p : list) {
%>
    <tr>
        <td><%= p.getId() %></td>
        <td><%= p.getName() %></td>
        <td><%= p.getEmail() %></td>
        <td><%= p.getBackground() %></td>
        <td><%= p.getProgramId() %></td>
        <td><%= p.getStatus() %></td>
        <td>
            <a class="edit" href="editParticipant.jsp?id=<%= p.getId() %>">Edit</a>
            |
            <a class="delete"
               href="deleteParticipant?id=<%= p.getId() %>"
               onclick="return confirm('Are you sure you want to delete this participant?');">
               Delete
            </a>
        </td>
    </tr>
<%
        }
    } else {
%>
    <tr>
        <td colspan="7">No participants found.</td>
    </tr>
<%
    }
%>

</table>

</body>
</html>
