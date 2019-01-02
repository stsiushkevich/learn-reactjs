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

    @GetMapping("/passing-functions-to-components")
    public String passingFunctionsToComponents(Map<String, Object> model) {
        model.put("currentPage", Pages.FAQ_PASSING_FUNCTIONS_TO_COMPONENTS);
        return "passingFunctionsToComponentsView";
    }

    @GetMapping("/component-state")
    public String componentState(Map<String, Object> model) {
        model.put("currentPage", Pages.FAQ_COMPONENT_STATE);
        return "componentStateView";
    }

    @GetMapping("/styling-and-css")
    public String stylingAndCss(Map<String, Object> model) {
        model.put("currentPage", Pages.FAQ_STYLING_AND_CSS);
        return "stylingAndCssView";
    }

    @GetMapping("/file-structure")
    public String fileStructure(Map<String, Object> model) {
        model.put("currentPage", Pages.FAQ_FILE_STRUCTURE);
        return "fileStructureView";
    }

    @GetMapping("/versioning-policy")
    public String versioningPolicy(Map<String, Object> model) {
        model.put("currentPage", Pages.FAQ_VERSIONING_POLICY);
        return "versioningPolicyView";
    }

    @GetMapping("/virtual-dom-and-internals")
    public String virtualDOMAndInternals(Map<String, Object> model) {
        model.put("currentPage", Pages.FAQ_VIRTUAL_DOM_AND_INTERNALS);
        return "virtualDOMAndInternalsView";
    }
}
