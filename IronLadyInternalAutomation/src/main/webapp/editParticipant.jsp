<%@ page import="java.util.List" %>
<%@ page import="com.ironlady.dao.ParticipantDAO" %>
<%@ page import="com.ironlady.dao.ProgramDAO" %>
<%@ page import="com.ironlady.model.Participant" %>
<%@ page import="com.ironlady.model.Program" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));

    ParticipantDAO participantDAO = new ParticipantDAO();
    Participant p = participantDAO.getParticipantById(id);

    ProgramDAO programDAO = new ProgramDAO();
    List<Program> programs = programDAO.getAllPrograms();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Participant</title>

    <style>
        body {
            margin: 0;
            font-family: "Segoe UI", sans-serif;
            background: linear-gradient(135deg, #f3e7f7, #f8f2fb);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .card {
            background: #ffffff;
            width: 420px;
            padding: 30px 35px;
            border-radius: 16px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.12);
        }

        h2 {
            text-align: center;
            color: #6a1b9a;
            margin-bottom: 25px;
        }

        label {
            font-weight: 600;
            display: block;
            margin-bottom: 6px;
            color: #333;
        }

        input, select {
            width: 100%;
            padding: 10px 12px;
            border-radius: 8px;
            border: 1px solid #ccc;
            margin-bottom: 18px;
            font-size: 14px;
        }

        input:focus, select:focus {
            outline: none;
            border-color: #6a1b9a;
        }

        .btn {
            width: 100%;
            background: #6a1b9a;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 10px;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .btn:hover {
            background: #5a1480;
        }

        .back-link {
            text-align: center;
            margin-top: 18px;
        }

        .back-link a {
            text-decoration: none;
            color: #6a1b9a;
            font-weight: 500;
        }
    </style>
</head>

<body>

<div class="card">
    <h2>Edit Participant</h2>

    <form action="updateParticipant" method="post">

        <input type="hidden" name="id" value="<%= p.getId() %>">

        <label>Name</label>
        <input type="text" name="name" value="<%= p.getName() %>" />

        <label>Email</label>
        <input type="email" name="email" value="<%= p.getEmail() %>" />

        <label>Background</label>
        <input type="text" name="background" value="<%= p.getBackground() %>" />

        <label>Program</label>
        <select name="programId">
            <% for (Program prog : programs) { %>
                <option value="<%= prog.getId() %>"
                    <%= prog.getId() == p.getProgramId() ? "selected" : "" %>>
                    <%= prog.getName() %>
                </option>
            <% } %>
        </select>

        <label>Status</label>
        <select name="status">
            <option <%= "Applied".equals(p.getStatus()) ? "selected" : "" %>>Applied</option>
            <option <%= "Selected".equals(p.getStatus()) ? "selected" : "" %>>Selected</option>
            <option <%= "Active".equals(p.getStatus()) ? "selected" : "" %>>Active</option>
            <option <%= "Completed".equals(p.getStatus()) ? "selected" : "" %>>Completed</option>
        </select>

        <button type="submit" class="btn">Update Participant</button>
    </form>

    <div class="back-link">
        <a href="listParticipants">← Back to Participants List</a>
    </div>
</div>

</body>
</html>
