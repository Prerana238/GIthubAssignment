package com.ironlady.model;

public class Participant {

    private int id;
    private String name;
    private String email;
    private String background;
    private int programId;
    private String status;

    // ✅ No-arg constructor (REQUIRED)
    public Participant() {
    }

    // ✅ Constructor used by AddParticipantServlet
    public Participant(String name, String email, String background, int programId, String status) {
        this.name = name;
        this.email = email;
        this.background = background;
        this.programId = programId;
        this.status = status;
    }

    // ===== Getters & Setters =====

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBackground() {
        return background;
    }

    public void setBackground(String background) {
        this.background = background;
    }

    public int getProgramId() {
        return programId;
    }

    public void setProgramId(int programId) {
        this.programId = programId;
    }


    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
