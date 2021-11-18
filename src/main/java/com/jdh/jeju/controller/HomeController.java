package com.jdh.jeju.controller;

import com.jdh.jeju.service.PlaceService;
import com.jdh.jeju.service.ThemeService;
import com.jdh.jeju.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @Autowired
    PlaceService placeService;
    @Autowired
    ThemeService themeService;
    @Autowired
    UserService userService;

    @GetMapping("/home")
    public String home(Model model) throws Exception {
        model.addAttribute("Top10Places",placeService.findTop10());
        model.addAttribute("Top10Themes", themeService.findTop10());
        model.addAttribute("latest10Theme", themeService.latest10Theme());
        model.addAttribute("Top10User", userService.userTop10());
        return "home/Home";
    }
}
