package com.learn.reactjs.web.controllers;

import com.learn.reactjs.web.constants.Pages;
import com.learn.reactjs.web.constants.Sections;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * @author stsiushkevich
 */
@Controller
@RequestMapping("/tutorial")
public class TutorialController {

    @GetMapping
    public String tutorial(Map<String, Object> model) {
        model.put("currentPage", Pages.TUTORIAL);
        return "tutorialView";
    }

    @GetMapping("/sections")
    public String topics(Map<String, Object> model) {
        model.put("currentPage", Pages.TUTORIAL_SECTIONS);
        return "basicsTopicsView";
    }
}
