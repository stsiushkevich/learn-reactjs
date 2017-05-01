package com.learn.reactjs.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

/**
 * @author stsiushkevich
 */
@Controller
public class MainController {
    @GetMapping ("/")
    public String home(Map<String, Object> model) {
        return "homeView";
    }
}
