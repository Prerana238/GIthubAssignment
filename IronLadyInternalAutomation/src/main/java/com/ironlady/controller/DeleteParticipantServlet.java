package com.ironlady.controller;

import com.ironlady.dao.ParticipantDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/deleteParticipant")
public class DeleteParticipantServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        ParticipantDAO dao = new ParticipantDAO();
        dao.deleteParticipant(id);

        response.sendRedirect("listParticipants");
    }
}
