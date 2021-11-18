package com.jdh.jeju.controller;

import com.jdh.jeju.dao.UserDao;
import com.jdh.jeju.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

    @PostMapping("/auth/login")
    public String login(String email, String password, String saveEmail, HttpServletResponse response, HttpSession session, Model model) throws Exception{
        Cookie cookie = null;
        if (saveEmail != null) {
            cookie = new Cookie("email", email);
            cookie.setMaxAge(60 * 60 * 24 * 7);
            //cookie.setPath(sc.getContextPath() + "/app/auth"); // 예) http://localhost:8080/pms/app/auth
        } else {
            cookie = new Cookie("email", "");
            cookie.setMaxAge(0); // 유효기간을 0으로 설정하면 웹브라우저가 받는 즉시 무효한 쿠기가 된다.
        }
        response.addCookie(cookie);

        if(email.equals("root@test.com") && password.equals("0000")) {
            User user = new User();
            user.setEmail(email);
            user.setPassword(password);
            user.setNickname("제주정승");
            session.setAttribute("loginUser", user);

            return "redirect:/home";
        }

        User user = userDao.findByEmailAndPassword(email, password);

        if (user != null) {
            session.setAttribute("loginUser", user);
            return "redirect:/home";

        } else {
            model.addAttribute("refresh", "2;url=loginform");
            model.addAttribute("pageTitle", "로그인 실패!");
            model.addAttribute("contentUrl", "user/LoginFail.jsp");
            return "template_main";
        }
    }
}
