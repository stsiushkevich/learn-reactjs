package com.learn.reactjs.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * @author stsiushkevich
 */
@Controller
@RequestMapping("/basics")
public class BasicsController {

    @GetMapping("/basics-topics")
    public String basicsTopics(Map<String, Object> model) {
        return "basicsTopicsView";
    }

    @GetMapping("/note-to-javascript")
    public String noteToJavaScript(Map<String, Object> model) {
        return "noteToJavaScriptView";
    } 
    
    @GetMapping("/hello-world-example")
    public String helloWorldExample(Map<String, Object> model) {
        return "helloWorldExampleView";
    }
    
    @GetMapping("/introduction-to-jsx")
    public String introductionToJsx(Map<String, Object> model) {
        return "introductionToJsxView";
    }
    
    @GetMapping("/rendering-elements")
    public String renderingElements(Map<String, Object> model) {
        return "renderingElementsView";
    }
    
    @GetMapping("/components-and-props")
    public String componentsAndProps(Map<String, Object> model) {
        return "componentsAndPropsView";
    }
    
    @GetMapping("/state-and-lifecycle")
    public String stateAndLifecycle(Map<String, Object> model) {
        return "stateAndLifecycleView";
    }
    
    @GetMapping("/handling-events")
    public String handlingEvents(Map<String, Object> model) {
        return "handlingEventsView";
    }
    
    @GetMapping("/conditional-rendering")
    public String conditionalRendering(Map<String, Object> model) {
        return "conditionalRenderingView";
    }
    
    @GetMapping("/lists-and-keys")
    public String listsAndKeys(Map<String, Object> model) {
        return "listsAndKeysView";
    }
    
    @GetMapping("/forms")
    public String forms(Map<String, Object> model) {
        return "formsView";
    }
    
    @GetMapping("/lifting-state-up")
    public String liftingStateUp(Map<String, Object> model) {
        return "liftingStateUpView";
    }
    
    @GetMapping("/composition-vs-inheritance")
    public String compositionVsInheritance(Map<String, Object> model) {
        return "compositionVsInheritanceView";
    }
}
