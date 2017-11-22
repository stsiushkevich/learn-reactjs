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
@RequestMapping("/core")
public class CoreController {

    @GetMapping("/topics")
    public String coreTopics(Map<String, Object> model) {
        model.put("currentSection", Sections.CORE);
        return "coreTopicsView";
    }

    @GetMapping("/jsx-in-depth")
    public String jsxInDepth(Map<String, Object> model) {
        model.put("currentPage", Pages.CORE_JSX_IN_DEPTH);
        return "jsxInDepthView";
    }

    @GetMapping("/typechecking-with-prop-types")
    public String typecheckingWithPropTypes(Map<String, Object> model) {
        model.put("currentPage", Pages.CORE_TYPECHECKING_WITH_PROP_TYPES);
        return "typecheckingWithPropTypesView";
    }

    @GetMapping("/refs-and-the-dom")
    public String refsAndTheDOM(Map<String, Object> model) {
        model.put("currentPage", Pages.CORE_REFS_AND_THE_DOM);
        return "refsAndTheDOMView";
    }

    @GetMapping("/uncontrolled-components")
    public String uncontrolledComponents(Map<String, Object> model) {
        model.put("currentPage", Pages.CORE_UNCONTROLLED_COMPONENTS);
        return "uncontrolledComponentsView";
    }

    @GetMapping("/optimizing-performance")
    public String optimizingPerformance(Map<String, Object> model) {
        model.put("currentPage", Pages.CORE_OPTIMIZING_PERFORMANCE);
        return "optimizingPerformanceView";
    }

    @GetMapping("/react-without-es6")
    public String reactWithoutES6(Map<String, Object> model) {
        model.put("currentPage", Pages.CORE_REACT_WITHOUT_ES6);
        return "reactWithoutES6View";
    }

    @GetMapping("/react-without-jsx")
    public String reactWithoutJSX(Map<String, Object> model) {
        model.put("currentPage", Pages.CORE_REACT_WITHOUT_JSX);
        return "reactWithoutJSXView";
    }

    @GetMapping("/reconciliation")
    public String reconciliation(Map<String, Object> model) {
        model.put("currentPage", Pages.CORE_RECONCILIATION);
        return "reconciliationView";
    }

    @GetMapping("/context")
    public String context(Map<String, Object> model) {
        model.put("currentPage", Pages.CORE_CONTEXT);
        return "contextView";
    }

    @GetMapping("/portals")
    public String portals(Map<String, Object> model) {
        model.put("currentPage", Pages.CORE_PORTALS);
        return "portalsView";
    }

    @GetMapping("/error-boundaries")
    public String errorBoundaries(Map<String, Object> model) {
        model.put("currentPage", Pages.CORE_ERROR_BOUNDARIES);
        return "errorBoundariesView";
    }

    @GetMapping("/web-components")
    public String webComponents(Map<String, Object> model) {
        model.put("currentPage", Pages.CORE_WEB_COMPONENTS);
        return "webComponentsView";
    }

    @GetMapping("/higher-order-components")
    public String higherOrderComponents(Map<String, Object> model) {
        model.put("currentPage", Pages.CORE_HIGHER_ORDER_COMPONENTS);
        return "higherOrderComponentsView";
    }

    @GetMapping("/integrating-with-other-libraries")
    public String integratingWithOtherLibraries(Map<String, Object> model) {
        model.put("currentPage", Pages.CORE_INTEGRATING_WITH_OTHER_LIBRARIES);
        return "integratingWithOtherLibrariesView";
    }
}
