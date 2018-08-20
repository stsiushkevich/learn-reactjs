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
@RequestMapping("/updates")
public class UpdatesController {

    @GetMapping("/topics")
    public String topics(Map<String, Object> model) {
        model.put("currentSection", Sections.UPDATES);
        return "updatesTopicsView";
    }

    @GetMapping("/react_v16_0")
    public String react_v16_0(Map<String, Object> model) {
        model.put("currentPage", Pages.UPDATES_REACT_V16_0);
        return "react_v16_0View";
    }

    @GetMapping("/dom-attributes-in-react-16")
    public String domAttributesInReact16(Map<String, Object> model) {
        model.put("currentPage", Pages.UPDATES_DOM_ATTRIBUTES_IN_REACT_16);
        return "domAttributesInReact16View";
    }

    @GetMapping("/error-handling-in-react-16")
    public String errorHandlingInReact16View(Map<String, Object> model) {
        model.put("currentPage", Pages.UPDATES_ERROR_HANDLING_IN_REACT_16);
        return "errorHandlingInReact16View";
    }

    @GetMapping("/react-v16.2.0-fragments-improved-support")
    public String fragmentsImprovedSupport(Map<String, Object> model) {
        model.put("currentPage", Pages.UPDATES_REACT_16_2_0_FRAGMENTS_IMPROVED_SUPPORT);
        return "fragmentsImprovedSupportView";
    }

    @GetMapping("/react-v16.3.0")
    public String react_v16_3_0(Map<String, Object> model) {
        model.put("currentPage", Pages.UPDATES_REACT_16_3_0);
        return "react_v16_3_0View";
    }

    @GetMapping("/react-v16.4.0-pointer-events")
    public String react_v16_4_0PointerEvents(Map<String, Object> model) {
        model.put("currentPage", Pages.UPDATES_REACT_16_4_0_POINTER_EVENTS);
        return "react_v16_4_0PointerEventsView";
    }

    @GetMapping("/derived-state-necessity")
    public String derivedStateNecessity(Map<String, Object> model) {
        model.put("currentPage", Pages.UPDATES_DERIVED_STATE_NECESSITY);
        return "derivedStateNecessityView";
    }
}
