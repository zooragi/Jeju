package com.jdh.jeju.controller;

import com.jdh.jeju.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AuthController {

    @Autowired
    UserDao userDao;

    @GetMapping("/auth/loginform")
    public String loginForm(Model model){
        model.addAttribute("pageTitle","로그인");
        model.addAttribute("contentUrl","./auth/AuthLoginForm.jsp");
        return "template_main";
    }
}
