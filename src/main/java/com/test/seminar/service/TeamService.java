package com.test.seminar.service;

import com.test.seminar.entity.Team;
import com.test.seminar.exception.RepetitiveRecordException;
import com.test.seminar.exception.TeamNotFoundException;
import org.springframework.web.multipart.MultipartFile;

import java.math.BigInteger;
import java.util.List;

public interface TeamService {

    Team getTeamByTeamId(BigInteger teamId)throws TeamNotFoundException;

    void deleteTeamByTeamId(BigInteger teamId) throws TeamNotFoundException;

    void updateTeam(Team team) throws TeamNotFoundException;

    void insertTeam(Team team,BigInteger courseClassId) throws RepetitiveRecordException;

    Team getTeamByStudentIdAndCourseId(BigInteger studentId,BigInteger courseId)throws TeamNotFoundException;

    List<Team> getTeamByCourseId(BigInteger courseId);

    List<Team> getTeamBySeminarControlId(BigInteger seminarControlId);

    void addTeamMember(BigInteger teamId,BigInteger studentId);

    void deleteTeamMember(BigInteger teamId,BigInteger studentId);
}
