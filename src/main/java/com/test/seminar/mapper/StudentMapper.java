package com.test.seminar.mapper;

import com.test.seminar.entity.Student;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.math.BigInteger;
import java.util.List;

/**
 * @author zhenweiwang
 * @date 2018/11/29
 */
@Mapper
@Component
public interface StudentMapper {
    /**
     * 通过ID获取学生信息
     *
     * @param studentId student id
     * @return Student
     */
    Student getStudentByStudentId(@Param("studentId") BigInteger studentId);

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
     */
    void insertStudent(@Param("student") Student student);

    /**
     * 更改学生信息
     *
     * @param student student
     */
    void updateStudentByStudent(@Param("student") Student student);

    /**
     * 删除学生
     *
     * @param studentId student id
     */
    void deleteStudentByStudentId(@Param("studentId") BigInteger studentId);
}
