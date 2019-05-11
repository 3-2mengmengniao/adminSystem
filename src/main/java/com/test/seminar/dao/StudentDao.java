package com.test.seminar.dao;

import com.test.seminar.entity.Student;
import com.test.seminar.exception.RepetitiveRecordException;
import com.test.seminar.exception.UserNotFoundException;

import java.math.BigInteger;
import java.util.List;

/**
 * @author cxh
 * @date 2018/11/29
 */
public interface StudentDao {

    /**
     * 通过ID获取学生信息
     *
     * @param studentId student id
     * @return Student
     * @throws UserNotFoundException user not found
     */
    Student getStudentByStudentId(BigInteger studentId)throws UserNotFoundException;

    /**
     * 通过account获取学生信息
     *
     * @param account account
     * @return Student
     */
    Student getStudentByAccount(String account);

    /**
     * 获取所有学生
     *
     * @return List<Student>
     */
    List<Student> getAllStudent();

    /**
     * 创建新的学生账户
     *
     * @param student student
     * throws RepetitiveRecordException repetitive record exception
     */
    void insertStudent(Student student);

    /**
     * 更改学生信息
     *
     * @param student  student
     * @throws UserNotFoundException user not found
     */
    void updateStudentByStudent(Student student)throws UserNotFoundException;

    /**
     * 通过id删除学生
     *
     * @param studentId student id
     * @throws UserNotFoundException user not found
     */
    void deleteStudentByStudentId(BigInteger studentId)throws UserNotFoundException;
}