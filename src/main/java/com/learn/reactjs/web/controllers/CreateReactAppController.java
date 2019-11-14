package com.learn.reactjs.web.controllers;

import com.learn.reactjs.web.constants.Sections;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * @author stsiushkevich
 */

@Controller
@RequestMapping("/create-react-app")
public class CreateReactAppController {
    @GetMapping("/home")
    public String home(Map<String, Object> model) {
        model.put("currentSection", Sections.CREATE_REACT_APP);
        return "createReactAppHomeView";
    }

    @GetMapping("/topics")
    public String topics(Map<String, Object> model) {
        model.put("currentSection", Sections.CREATE_REACT_APP);
        return "createReactAppTopicsView";
    }
}
