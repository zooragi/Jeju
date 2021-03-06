package com.jdh.jeju.controller;

import com.jdh.jeju.service.ThemeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ThemeController {

    @Autowired
    private ThemeService themeService;

    @GetMapping("/themes")
    public String list(Model model) throws Exception {
       model.addAttribute("themeList", this.themeService.findThemes());
       return "/themes/list";
    }
}
