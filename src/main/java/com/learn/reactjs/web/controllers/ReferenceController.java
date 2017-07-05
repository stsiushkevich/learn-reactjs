package com.learn.reactjs.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * @author stsiushkevich
 */
@Controller
@RequestMapping("/core")
public class ReferenceController {

    @GetMapping("/topics")
    public String coreTopics(Map<String, Object> model) {
        return "coreTopicsView";
    }
}
