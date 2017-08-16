package com.learn.reactjs.config;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.SessionTrackingMode;
import java.util.HashSet;

public class ServletInitializer extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(AppConfiguration.class);
    }

    @Override
    public void onStartup(ServletContext context) throws ServletException {
        HashSet<SessionTrackingMode> set = new HashSet<SessionTrackingMode>();
        set.add(SessionTrackingMode.COOKIE);
        context.setSessionTrackingModes(set);
    }
}