package com.ironlady.dao;

import com.ironlady.model.Participant;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ParticipantDAO {

    // CREATE
    public void addParticipant(Participant p) {
        String sql = "INSERT INTO participants(name, email, background, program_id, status) VALUES (?, ?, ?, ?, ?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, p.getName());
            ps.setString(2, p.getEmail());
            ps.setString(3, p.getBackground());
            ps.setInt(4, p.getProgramId());   // ✅ FIX
            ps.setString(5, p.getStatus());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // READ
    public List<Participant> getAllParticipants() {
        List<Participant> list = new ArrayList<>();
        String sql = "SELECT * FROM participants";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Participant p = new Participant();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setEmail(rs.getString("email"));
                p.setBackground(rs.getString("background"));
                p.setProgramId(rs.getInt("program_id")); // ✅ FIX
                p.setStatus(rs.getString("status"));

                list.add(p);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // UPDATE
    public void updateParticipant(Participant p) {
        String sql = "UPDATE participants SET name=?, email=?, background=?, program_id=?, status=? WHERE id=?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, p.getName());
            ps.setString(2, p.getEmail());
            ps.setString(3, p.getBackground());
            ps.setInt(4, p.getProgramId());  // ✅ FIX
            ps.setString(5, p.getStatus());
            ps.setInt(6, p.getId());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // DELETE
    public void deleteParticipant(int id) {
        String sql = "DELETE FROM participants WHERE id=?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // GET BY ID
    public Participant getParticipantById(int id) {
        Participant p = null;
        String sql = "SELECT * FROM participants WHERE id=?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                p = new Participant();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setEmail(rs.getString("email"));
                p.setBackground(rs.getString("background"));
                p.setProgramId(rs.getInt("program_id")); // ✅ FIX
                p.setStatus(rs.getString("status"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }

    // DASHBOARD COUNTS
    public int getTotalParticipants() {
        String sql = "SELECT COUNT(*) FROM participants";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int getCountByStatus(String status) {
        String sql = "SELECT COUNT(*) FROM participants WHERE status = ?";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, status);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    


}
