package com.ironlady.controller;

import com.ironlady.dao.ParticipantDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/dashboard")
public class DashboardServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ParticipantDAO dao = new ParticipantDAO();

        request.setAttribute("total", dao.getTotalParticipants());
        request.setAttribute("applied", dao.getCountByStatus("Applied"));
        request.setAttribute("selected", dao.getCountByStatus("Selected"));
        request.setAttribute("active", dao.getCountByStatus("Active"));
        request.setAttribute("completed", dao.getCountByStatus("Completed"));

        request.getRequestDispatcher("dashboard.jsp").forward(request, response);
    }
}

