package com.ironlady.controller;

import com.ironlady.dao.ParticipantDAO;
import com.ironlady.dao.ProgramDAO;
import com.ironlady.model.Participant;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/addParticipant")
public class AddParticipantServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String background = request.getParameter("background");

        // IMPORTANT CHANGE
        int programId = Integer.parseInt(request.getParameter("programId"));

        String status = request.getParameter("status");

        Participant participant =
                new Participant(name, email, background, programId, status);

        ParticipantDAO dao = new ParticipantDAO();
        dao.addParticipant(participant);

        response.sendRedirect("listParticipants");
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ProgramDAO programDAO = new ProgramDAO();
        request.setAttribute("programs", programDAO.getAllPrograms());

        request.getRequestDispatcher("addParticipant.jsp")
               .forward(request, response);
    }

}
