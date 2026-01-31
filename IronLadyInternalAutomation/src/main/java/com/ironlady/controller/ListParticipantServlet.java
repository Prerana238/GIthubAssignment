package com.ironlady.controller;

import com.ironlady.dao.ParticipantDAO;
import com.ironlady.model.Participant;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/listParticipants")
public class ListParticipantServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ParticipantDAO dao = new ParticipantDAO();
        List<Participant> list = dao.getAllParticipants();

        // ✅ THIS WAS MISSING
        request.setAttribute("participants", list);

        request.getRequestDispatcher("listParticipants.jsp")
               .forward(request, response);
    }
}
