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
    private static final Integer BEGINNER_PRICE = 8;
    private static final Integer SPECIALIST_PRICE = 10;
    private static final Integer PROFESSIONAL_PRICE = 10;
    private static final Integer MASTER_PRICE = 15;

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
        model.put("beginnerPrice", BEGINNER_PRICE);
        model.put("specialistPrice", SPECIALIST_PRICE);
        model.put("professionalPrice", PROFESSIONAL_PRICE);
        model.put("masterPrice", MASTER_PRICE);
        return "purchaseView";
    }

    @GetMapping("yandex_14e7853c65dd22f0.html")
    public String verification(Map<String, Object> model) {
        return "verificationView";
    }
}