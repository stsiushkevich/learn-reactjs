package com.learn.reactjs.web.controllers;

import com.learn.reactjs.web.constants.Pages;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

/**
 * @author stsiushkevich
 */
@Controller
public class MainController {
    @GetMapping ("/home")
    public String home(Map<String, Object> model) {
        model.put("currentPage", Pages.HOME);
        return "homeView";
    }

    @GetMapping ("/about-project")
    public String aboutProject(Map<String, Object> model) {
        model.put("currentPage", Pages.ABOUT_PROJECT);
        return "aboutProjectView";
    }
}
