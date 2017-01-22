package com;

import com.Controllers.MainController;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

/**
 * Jaromir Hnik, Lenka Folprechtova
 * Hotel System, PPRO FIM UHK
 */

@SpringBootApplication
public class Main{

    public static void main(String[] args) {
        SpringApplication.run(Main.class, args);
    }
}
