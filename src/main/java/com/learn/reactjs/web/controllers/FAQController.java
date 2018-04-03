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
@RequestMapping("/faq")
public class FAQController {

    @GetMapping("/topics")
    public String topics(Map<String, Object> model) {
        model.put("currentSection", Sections.FAQ);
        return "faqTopicsView";
    }

    @GetMapping("/ajax-and-apis")
    public String ajaxAndApis(Map<String, Object> model) {
        model.put("currentPage", Pages.FAQ_AJAX_AND_APIS);
        return "ajaxAndApisView";
    }

    @GetMapping("/babel-and-jsx")
    public String babelAndJsx(Map<String, Object> model) {
        model.put("currentPage", Pages.FAQ_BABEL_AND_JSX);
        return "babelAndJsxView";
    }

    @GetMapping("/component-state")
    public String componentState(Map<String, Object> model) {
        model.put("currentPage", Pages.FAQ_COMPONENT_STATE);
        return "componentStateView";
    }
}
