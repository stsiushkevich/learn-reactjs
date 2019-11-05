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
@RequestMapping("/training-project")
public class TrainingProjectController {

    @GetMapping("/topics")
    public String topics(Map<String, Object> model) {
        model.put("currentSection", Sections.TRAINING_PROJECT);
        return "trainingProjectTopicsView";
    }

    @GetMapping("/introduction")
    public String introduction(Map<String, Object> model) {
        model.put("currentPage", Pages.TRN_PRJ_INTRODUCTION);
        return "introductionView";
    }

    @GetMapping("/app-frame")
    public String appFrame(Map<String, Object> model) {
        model.put("currentPage", Pages.TRN_PRJ_APP_FRAME);
        return "appFrameView";
    }

    @GetMapping("/page-mockups")
    public String pageMockups(Map<String, Object> model) {
        model.put("currentPage", Pages.TRN_PRJ_PAGE_MOCKUPS);
        return "pageMockupsView";
    }

    @GetMapping("/home-page")
    public String homePage(Map<String, Object> model) {
        model.put("currentPage", Pages.TRN_PRJ_HOME_PAGE);
        return "homePageView";
    }

    @GetMapping("/appointments")
    public String appointments(Map<String, Object> model) {
        model.put("currentPage", Pages.TRN_PRJ_APPOINTMENTS);
        return "appointmentsView";
    }

    @GetMapping("/routing")
    public String routing(Map<String, Object> model) {
        model.put("currentPage", Pages.TRN_PRJ_ROUTING);
        return "routingView";
    }

    @GetMapping("/async-data-loading")
    public String asyncDataLoading(Map<String, Object> model) {
        model.put("currentPage", Pages.TRN_PRJ_ASYNC_DATA_LOADING);
        return "asyncDataLoadingView";
    }

    @GetMapping("/app-state")
    public String appState(Map<String, Object> model) {
        model.put("currentPage", Pages.TRN_PRJ_APP_STATE);
        return "appStateView";
    }

    @GetMapping("/summary")
    public String summary(Map<String, Object> model) {
        model.put("currentPage", Pages.TRN_PRJ_SUMMARY);
        return "summaryView";
    }

    @GetMapping("/practice")
    public String practice(Map<String, Object> model) {
        model.put("currentPage", Pages.TRN_PRJ_PRACTICE);
        return "practiceView";
    }
}
