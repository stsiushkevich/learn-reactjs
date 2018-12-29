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
@RequestMapping("/introduction")
public class IntroductionController {
    @GetMapping("/topics")
    public String introductionTopics(Map<String, Object> model) {
        model.put("currentSection", Sections.INTRODUCTION);
        return "introductionTopicsView";
    }

    @GetMapping ("/introduction-in-reactjs")
    public String introductionInReactJS(Map<String, Object> model) {
        model.put("currentPage", Pages.INTRODUCTION_INTRODUCTION_IN_REACT_JS);
        return "introductionInReactJSView";
    }

    @GetMapping ("/installation")
    public String introduction(Map<String, Object> model) {
        model.put("currentPage", Pages.INTRODUCTION_INSTALLATION);
        return "installationView";
    }

    @GetMapping ("/devtools")
    public String devtools(Map<String, Object> model) {
        model.put("currentPage", Pages.INTRODUCTION_DEVTOOLS);
        return "devtoolsView";
    }

    @GetMapping ("/getting-started")
    public String gettingStarted(Map<String, Object> model) {
        model.put("currentPage", Pages.INTRODUCTION_GETTING_STARTED);
        return "gettingStartedView";
    }

    @GetMapping ("/add-react-to-a-web-site")
    public String addReactToWebSite(Map<String, Object> model) {
        model.put("currentPage", Pages.INTRODUCTION_ADD_REACT_TO_WEB_SITE);
        return "addReactToWebSiteView";
    }

    @GetMapping ("/create-a-new-react-app")
    public String createNewReactApp(Map<String, Object> model) {
        model.put("currentPage", Pages.INTRODUCTION_CREATE_NEW_REACT_APP);
        return "createNewReactAppView";
    }

    @GetMapping ("/cdn-links")
    public String cdnLinks(Map<String, Object> model) {
        model.put("currentPage", Pages.INTRODUCTION_CDN_LINKS);
        return "cdnLinksView";
    }
}
