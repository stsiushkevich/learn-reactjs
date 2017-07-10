package com.learn.reactjs.web.controllers;

import com.learn.reactjs.web.constants.Pages;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * @author stsiushkevich
 */
@Controller
@RequestMapping("/")
public class MainController {
    @GetMapping("home")
    public String home(Map<String, Object> model) {
        model.put("currentPage", Pages.HOME);
        return "homeView";
    }

    @GetMapping("about-project")
    public String aboutProject(Map<String, Object> model) {
        model.put("currentPage", Pages.ABOUT_PROJECT);
        return "aboutProjectView";
    }

    @GetMapping("terms-of-use")
    public String termsOfUse(Map<String, Object> model) {
        model.put("currentPage", Pages.TERMS_OF_USE);
        return "termsOfUseView";
    }

    @GetMapping("contacts")
    public String contacts(Map<String, Object> model) {
        model.put("currentPage", Pages.CONTACTS);
        return "contactsView";
    }

    @GetMapping("purchase")
    public String purchase(Map<String, Object> model) {
        model.put("currentPage", Pages.PURCHASE);
        return "purchaseView";
    }
}