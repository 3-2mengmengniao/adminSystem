package com.test.seminar.entity;

import java.math.BigInteger;

/**
 * @author yuyingzhu
 * @date 2018/11/28
 */

public class Question {
    private BigInteger id;
    private Student student;
    private int selected;
    private double score;
    private TeamSerial teamSerial;

    public BigInteger getId() {
        return id;
    }

    public Student getStudent() { return student; }

    public void setStudent(Student student) { this.student = student; }

    public int getSelected() {
        return selected;
    }

    public void setSelected(int selected) {
        this.selected = selected;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public TeamSerial getTeamSerial() {
        return teamSerial;
    }

    public void setTeamSerial(TeamSerial teamSerial) {
        this.teamSerial = teamSerial;
    }
}
