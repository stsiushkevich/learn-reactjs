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
@RequestMapping("/basics")
public class BasicsController {

    @GetMapping("/topics")
    public String topics(Map<String, Object> model) {
        model.put("currentSection", Sections.BASICS);
        return "basicsTopicsView";
    }

    @GetMapping("/note-to-javascript")
    public String noteToJavaScript(Map<String, Object> model) {
        model.put("currentPage", Pages.BASICS_NOTE_TO_JAVA_SCRIPT);
        return "noteToJavaScriptView";
    } 
    
    @GetMapping("/hello-world-example")
    public String helloWorldExample(Map<String, Object> model) {
        model.put("currentPage", Pages.BASICS_HELLO_WORLD_EXAMPLE);
        return "helloWorldExampleView";
    }
    
    @GetMapping("/introduction-to-jsx")
    public String introductionToJsx(Map<String, Object> model) {
        model.put("currentPage", Pages.BASICS_INTRODUCTION_TO_JSX);
        return "introductionToJsxView";
    }
    
    @GetMapping("/rendering-elements")
    public String renderingElements(Map<String, Object> model) {
        model.put("currentPage", Pages.BASICS_RENDERING_ELEMENTS);
        return "renderingElementsView";
    }
    
    @GetMapping("/components-and-props")
    public String componentsAndProps(Map<String, Object> model) {
        model.put("currentPage", Pages.BASICS_COMPONENTS_AND_PROPS);
        return "componentsAndPropsView";
    }
    
    @GetMapping("/state-and-lifecycle")
    public String stateAndLifecycle(Map<String, Object> model) {
        model.put("currentPage", Pages.BASICS_STATE_AND_LIFECYCLE);
        return "stateAndLifecycleView";
    }
    
    @GetMapping("/handling-events")
    public String handlingEvents(Map<String, Object> model) {
        model.put("currentPage", Pages.BASICS_HANDLING_EVENTS);
        return "handlingEventsView";
    }
    
    @GetMapping("/conditional-rendering")
    public String conditionalRendering(Map<String, Object> model) {
        model.put("currentPage", Pages.BASICS_CONDITIONAL_RENDERING);
        return "conditionalRenderingView";
    }
    
    @GetMapping("/lists-and-keys")
    public String listsAndKeys(Map<String, Object> model) {
        model.put("currentPage", Pages.BASICS_LISTS_AND_KEYS);
        return "listsAndKeysView";
    }
    
    @GetMapping("/forms")
    public String forms(Map<String, Object> model) {
        model.put("currentPage", Pages.BASICS_FORMS);
        return "formsView";
    }
    
    @GetMapping("/lifting-state-up")
    public String liftingStateUp(Map<String, Object> model) {
        model.put("currentPage", Pages.BASICS_LIFTING_STATE_UP);
        return "liftingStateUpView";
    }
    
    @GetMapping("/composition-vs-inheritance")
    public String compositionVsInheritance(Map<String, Object> model) {
        model.put("currentPage", Pages.BASICS_COMPOSITION_VS_INHERITANCE);
        return "compositionVsInheritanceView";
    }

    @GetMapping("/thinking-in-react")
    public String thinkingInReact(Map<String, Object> model) {
        model.put("currentPage", Pages.BASICS_THINKING_IN_REACT);
        return "thinkingInReactView";
    }
}
