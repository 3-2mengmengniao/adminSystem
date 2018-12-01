package com.test.seminar.view;

import static org.springframework.web.bind.annotation.RequestMethod.*;

import com.test.seminar.entity.Course;
import com.test.seminar.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.math.BigInteger;
import java.util.List;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
    @Autowired
    CourseService courseService;

    @RequestMapping(value="/homepage")
    public String home(Model model) {
        return "teacher/homepage";
    }

    @RequestMapping(value="/courses",method = GET)
    public String courses(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        BigInteger teacherId=(BigInteger)session.getAttribute("id");
        List<Course> courseList= courseService.getCourseByTeacherId(teacherId);
        System.out.println(courseList.size());
        model.addAttribute("courseList",courseList);
        return "teacher/courses";
    }

    @RequestMapping(value="/security",method = GET)
    public String security(Model model) {
        return "teacher/security";
    }

    @RequestMapping(value="/class-info")
    public String classInfo(Model model) {
        return "teacher/class-info";
    }

    @RequestMapping(value="/course-info")
    public String courseInfo(Model model) {
        return "teacher/course-info";
    }

    @RequestMapping(value="/create-course",method = GET)
    public String createCourse(Model model) {
        return "teacher/create-course";
    }

    @RequestMapping(value="/create-course",method = POST)
    @ResponseBody
    public String createCoursePost(HttpServletRequest request,Model model,Course course) {
        HttpSession session = request.getSession();
        BigInteger teacherId=(BigInteger)session.getAttribute("id");
        course.setTeacherId(teacherId);

        courseService.insertCourse(course);
        String status="200";
        return status;
    }

    @RequestMapping(value="/group-score")
    public String groupScore(Model model) {
        return "teacher/group-score";
    }

    @RequestMapping(value="/seminars")
    public String seminars(HttpServletRequest request,Model model) {
        HttpSession session = request.getSession();
        BigInteger teacherId=(BigInteger)session.getAttribute("id");
        List<Course> courseList= courseService.getCourseByStudentId(teacherId);
        model.addAttribute("courseList",courseList);
        return "teacher/seminars";
    }

    @RequestMapping(value="/course-seminar")
    public String courseSeminar(Model model) {
        return "teacher/course-seminar";
    }

    @RequestMapping(value="/teams")
    public String teams(Model model) {
        return "teacher/teams";
    }

    @RequestMapping(value="/seminar_info_end")
    public String seminarInfoEnd(Model model) {
        return "teacher/seminar_info_end";
    }

    @RequestMapping(value="/seminar_info_begin")
    public String seminarInfoBegin(Model model) {
        return "teacher/seminar_info_begin";
    }

    @RequestMapping(value="/report_download")
    public String reportDownload(Model model) {
        return "teacher/report_download";
    }

    @RequestMapping(value="/report_score")
    public String reportScore(Model model) {
        return "teacher/report_score";
    }
}
