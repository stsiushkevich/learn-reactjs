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
@RequestMapping("/reference")
public class ReferenceController {

    @GetMapping("/topics")
    public String topics(Map<String, Object> model) {
        model.put("currentSection", Sections.REFERENCE);
        return "referenceTopicsView";
    }

    @GetMapping("/react")
    public String react(Map<String, Object> model) {
        model.put("currentPage", Pages.REFERENCE_REACT);
        return "reactView";
    }

    @GetMapping("/react-component")
    public String reactComponent(Map<String, Object> model) {
        model.put("currentPage", Pages.REFERENCE_REACT_COMPONENT);
        return "reactComponentView";
    }

    @GetMapping("/react-dom")
    public String reactDom(Map<String, Object> model) {
        model.put("currentPage", Pages.REFERENCE_REACT_DOM);
        return "reactDomView";
    }

    @GetMapping("/react-dom-server")
    public String reactDomServer(Map<String, Object> model) {
        model.put("currentPage", Pages.REFERENCE_REACT_DOM_SERVER);
        return "reactDomServerView";
    }

    @GetMapping("/dom-elements")
    public String domElements(Map<String, Object> model) {
        model.put("currentPage", Pages.REFERENCE_DOM_ELEMENTS);
        return "domElementsView";
    }

    @GetMapping("/synthetic-event")
    public String syntheticEvent(Map<String, Object> model) {
        model.put("currentPage", Pages.REFERENCE_SYNTHETIC_EVENT);
        return "syntheticEventView";
    }

    @GetMapping("/test-utilities")
    public String testUtilities(Map<String, Object> model) {
        model.put("currentPage", Pages.REFERENCE_TEST_UTILITIES);
        return "testUtilitiesView";
    }

    @GetMapping("/shallow-renderer")
    public String shallowRenderer(Map<String, Object> model) {
        model.put("currentPage", Pages.REFERENCE_SHALLOW_RENDERER);
        return "shallowRendererView";
    }
}
