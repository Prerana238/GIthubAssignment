package com.ironlady.dao;

import com.ironlady.model.Program;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProgramDAO {

    private static final String GET_ALL_PROGRAMS =
            "SELECT id, name FROM programs";

    public List<Program> getAllPrograms() {

        List<Program> programs = new ArrayList<>();

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(GET_ALL_PROGRAMS);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Program program = new Program();
                program.setId(rs.getInt("id"));
                program.setName(rs.getString("name"));
                programs.add(program);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return programs;
    }
}
