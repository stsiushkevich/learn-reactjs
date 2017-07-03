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
public class CoreController {

    @GetMapping("/topics")
    public String coreTopics(Map<String, Object> model) {
        return "coreTopicsView";
    }

    @GetMapping("/jsx-in-depth")
    public String jsxInDepth(Map<String, Object> model) {
        return "jsxInDepthView";
    }

    @GetMapping("/typechecking-with-prop-types")
    public String typecheckingWithPropTypes(Map<String, Object> model) {
        return "typecheckingWithPropTypesView";
    }

    @GetMapping("/refs-and-the-dom")
    public String refsAndTheDOM(Map<String, Object> model) {
        return "refsAndTheDOMView";
    }

    @GetMapping("/uncontrolled-components")
    public String uncontrolledComponents(Map<String, Object> model) {
        return "uncontrolledComponentsView";
    }

    @GetMapping("/optimizing-performance")
    public String optimizingPerformance(Map<String, Object> model) {
        return "optimizingPerformanceView";
    }

    @GetMapping("/react-without-es6")
    public String reactWithoutES6(Map<String, Object> model) {
        return "reactWithoutES6View";
    }

    @GetMapping("/react-without-jsx")
    public String reactWithoutJSX(Map<String, Object> model) {
        return "reactWithoutJSXView";
    }

    @GetMapping("/reconciliation")
    public String reconciliation(Map<String, Object> model) {
        return "reconciliationView";
    }

    @GetMapping("/context")
    public String context(Map<String, Object> model) {
        return "contextView";
    }

    @GetMapping("/web-components")
    public String webComponents(Map<String, Object> model) {
        return "webComponentsView";
    }

    @GetMapping("/higher-order-components")
    public String higherOrderComponents(Map<String, Object> model) {
        return "higherOrderComponentsView";
    }

    @GetMapping("/integrating-with-other-libraries")
    public String integratingWithOtherLibraries(Map<String, Object> model) {
        return "integratingWithOtherLibrariesView";
    }
}
