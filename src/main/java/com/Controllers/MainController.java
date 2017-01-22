package com.Controllers;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

/**
 * Jaromir Hnik, Lenka Folprechtova
 * Hotel System, PPRO FIM UHK
 */

@Controller
public class MainController extends WebMvcConfigurerAdapter {

    @RequestMapping(value = "/")
    public String home(){
        return "index";
    }

    @RequestMapping(value = "/galerie")
    public String gallery(){
        return "gallery";
    }

    @RequestMapping(value = "/kontakt")
    public String contact(){
        return "contact";
    }

    @RequestMapping(value = "/prihlaseni")
    public String login(){
        return "login";
    }
}
