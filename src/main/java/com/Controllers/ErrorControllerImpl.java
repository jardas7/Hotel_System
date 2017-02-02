package com.Controllers;

/**
 * Created by jaromirhnik on 31.01.17.
 */

import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Jaromir Hnik, Lenka Folprechtova
 * Hotel System, PPRO FIM UHK
 */


@Controller
public class ErrorControllerImpl implements ErrorController {

    private static final String PATH = "/error";

    @RequestMapping(value = PATH)
    public String error() {
        return "redirect:/login";
    }

    @Override
    public String getErrorPath() {
        return PATH;
    }
}
