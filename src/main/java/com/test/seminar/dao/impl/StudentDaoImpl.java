package com.test.seminar.dao.impl;

import com.test.seminar.dao.StudentDao;
import com.test.seminar.entity.Student;
import com.test.seminar.exception.RepetitiveRecordException;
import com.test.seminar.exception.UserNotFoundException;
import com.test.seminar.mapper.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.math.BigInteger;
import java.util.List;

/**
 * @author zhenweiwang
 * @date 2018/11/29
 */
@Component
public class StudentDaoImpl implements StudentDao {
    @Autowired
    private StudentMapper studentMapper;

    @Override
    public Student getStudentByStudentId(BigInteger studentId) throws UserNotFoundException {
        Student student=studentMapper.getStudentByStudentId(studentId);
        if(student==null) {
            throw new UserNotFoundException();
        }
        return student;
    }

    @Override
    public Student getStudentByAccount(String account){
        return studentMapper.getStudentByAccount(account);
    }

    @Override
    public List<Student> getAllStudent() {
        return studentMapper.getAllStudent();
    }

    @Override
    public void insertStudent(Student student)throws RepetitiveRecordException {
        studentMapper.insertStudent(student);
    }

    @Override
    public void updateStudentByStudent(Student student)throws UserNotFoundException {
        if(studentMapper.getStudentByStudentId(student.getId())==null) {
            throw new UserNotFoundException();
        }
        studentMapper.updateStudentByStudent(student);
    }

    @Override
    public void deleteStudentByStudentId(BigInteger studentId)throws UserNotFoundException {
        if(studentMapper.getStudentByStudentId(studentId)==null) {
            throw new UserNotFoundException();
        }
        studentMapper.deleteStudentByStudentId(studentId);
    }
}