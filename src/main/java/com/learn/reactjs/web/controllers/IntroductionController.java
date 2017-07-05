package com.learn.reactjs.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * @author stsiushkevich
 */
@Controller
@RequestMapping("/introduction")
public class IntroductionController {
    @GetMapping("/topics")
    public String introductionTopics(Map<String, Object> model) {
        return "introductionTopicsView";
    }

    @GetMapping ("/introduction-in-reactjs")
    public String introductionInReactJS(Map<String, Object> model) {
        return "introductionInReactJSView";
    }

    @GetMapping ("/installation")
    public String introduction(Map<String, Object> model) {
        return "installationView";
    }

    @GetMapping ("/devtools")
    public String devtools(Map<String, Object> model) {
        return "devtoolsView";
    }
}
