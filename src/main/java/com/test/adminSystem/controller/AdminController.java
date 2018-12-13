package com.test.adminSystem.controller;

import static org.springframework.web.bind.annotation.RequestMethod.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class AdminController {

    @RequestMapping(value = {"/","/login"}, method = GET)
    public String login(Model model) {
        return "login";
    }

    @RequestMapping(value ="/index", method = GET)
    public String index(Model model) {
        return "index";
    }

    @RequestMapping(value ="/teacherList", method = GET)
    public String teacherList(Model model) {
        return "teacherList";
    }

    @RequestMapping(value ="/studentList", method = GET)
    public String studentList(Model model) {
        return "studentList";
    }

    @RequestMapping(value ="/editTeacher", method = GET)
    public String editTeacher(Model model) {
        return "editTeacher";
    }

    @RequestMapping(value ="/editStudent", method = GET)
    public String editStudent(Model model) {
        return "editStudent";
    }

    @RequestMapping(value ="/addTeacher", method = GET)
    public String addTeacher(Model model) {
        return "addTeacher";
    }

}
