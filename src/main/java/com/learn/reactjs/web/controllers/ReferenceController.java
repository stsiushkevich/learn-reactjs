package com.learn.reactjs.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * @author stsiushkevich
 */
@Controller
@RequestMapping("/reference")
public class ReferenceController {

    @GetMapping("/topics")
    public String topics(Map<String, Object> model) {
        return "referenceTopicsView";
    }

    @GetMapping("/react")
    public String react(Map<String, Object> model) {
        return "reactView";
    }

    @GetMapping("/react-component")
    public String reactComponent(Map<String, Object> model) {
        return "reactComponentView";
    }

    @GetMapping("/react-dom")
    public String reactDom(Map<String, Object> model) {
        return "reactDomView";
    }

    @GetMapping("/react-dom-server")
    public String reactDomServer(Map<String, Object> model) {
        return "reactDomServerView";
    }

    @GetMapping("/dom-elements")
    public String domElements(Map<String, Object> model) {
        return "domElementsView";
    }

    @GetMapping("/synthetic-event")
    public String syntheticEvent(Map<String, Object> model) {
        return "syntheticEventView";
    }

    @GetMapping("/test-utilities")
    public String testUtilities(Map<String, Object> model) {
        return "testUtilitiesView";
    }

    @GetMapping("/shallow-renderer")
    public String shallowRenderer(Map<String, Object> model) {
        return "shallowRendererView";
    }
}
