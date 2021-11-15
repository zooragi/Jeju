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
       model.addAttribute("contentUrl", "./themes/list.jsp");
       model.addAttribute("pageTitle", "전체테마리스트");
       return "template_main";
    }
}
