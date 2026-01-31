package com.ironlady.controller;

import com.ironlady.dao.ParticipantDAO;
import com.ironlady.model.Participant;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/updateParticipant")
public class UpdateParticipantServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String background = request.getParameter("background");
        int programId = Integer.parseInt(request.getParameter("programId"));
        String status = request.getParameter("status");

        Participant p = new Participant();
        p.setId(id);
        p.setName(name);
        p.setEmail(email);
        p.setBackground(background);
        p.setProgramId(programId);
        p.setStatus(status);

        ParticipantDAO dao = new ParticipantDAO();
        dao.updateParticipant(p);

        response.sendRedirect("listParticipants");
    }
}
