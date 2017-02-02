package com.Controllers;

import com.Entity.Reservation;
import com.Entity.UserEntity;
import com.Services.ReservationsService;
import com.Services.RoomCategoryService;
import com.Services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Jaromir Hnik, Lenka Folprechtova
 * Hotel System, PPRO FIM UHK
 */

@Controller
public class MainController extends WebMvcConfigurerAdapter {

    @Autowired
    private UserService userService;

    @Autowired
    private ReservationsService reservationsService;

    @Autowired
    public RoomCategoryService roomCategoryService;

    @RequestMapping(value = "/")
    public String home() {
        return "index";
    }

    @RequestMapping(value = "/Galerie")
    public String gallery() {
        return "gallery";
    }

    @RequestMapping(value = "/Kontakt")
    public String contact() {
        return "contact";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }


    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/Uzivatele")
    public String viewUsers(HttpServletRequest req) {
        req.setAttribute("users", userService.getAllUsers());
        req.setAttribute("mode", "MODE_USERS");
        return "userPlace";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/delete-user")
    public String deleteUser(@RequestParam int id, HttpServletRequest req) {
        userService.removeUserById(id);
        req.setAttribute("users", userService.getAllUsers());
        req.setAttribute("mode", "MODE_USERS");
        return "redirect:/Uzivatele";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/update-user")
    public String updateUser(@RequestParam int id, HttpServletRequest req) {
        req.setAttribute("user", userService.getUserById(id));
        req.setAttribute("mode", "MODE_UPDATE");
        return "userPlace";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/add-user")
    public String addUser(@ModelAttribute UserEntity user, HttpServletRequest req) {
        req.setAttribute("mode", "MODE_NEW");
        return "userPlace";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/save-user")
    public String saveUser(@ModelAttribute UserEntity user, HttpServletRequest req) {
        userService.insertUser(user);
        req.setAttribute("users", userService.getAllUsers());
        req.setAttribute("mode", "MODE_USERS");
        return "redirect:/Uzivatele";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/saveUpdate-user")
    public String saveUpdateUser(@ModelAttribute UserEntity user, HttpServletRequest req) {
        userService.updateUser(user);
        req.setAttribute("users", userService.getAllUsers());
        req.setAttribute("mode", "MODE_USERS");
        return "redirect:/Uzivatele";
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
    @RequestMapping(value = "/Rezervace")
    public String viewReservations(HttpServletRequest req) {
        req.setAttribute("reservations", reservationsService.getAllReservations());
        req.setAttribute("mode", "MODE_RESERVATIONS");
        return "userPlace";
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
    @RequestMapping(value = "/delete-reservation")
    public String deleteReservation(@RequestParam int id, HttpServletRequest req) {
        reservationsService.removeReservationById(id);
        req.setAttribute("reservations", reservationsService.getAllReservations());
        req.setAttribute("mode", "MODE_RESERVATIONS");
        return "redirect:/Rezervace";
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
    @RequestMapping(value = "/update-reservation")
    public String updateReservation(@RequestParam int id, HttpServletRequest req) {
        req.setAttribute("reservation", reservationsService.getReservationById(id));
        req.setAttribute("mode", "MODE_UPDATERESERVATION");
        return "userPlace";
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
    @RequestMapping(value = "/add-reservation")
    public String addReservation(@ModelAttribute Reservation reservation, HttpServletRequest req) {
        req.setAttribute("mode", "MODE_NEWRESERVATION");
        return "userPlace";
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
    @RequestMapping(value = "/save-reservation")
    public String saveReservation(@ModelAttribute Reservation reservation, HttpServletRequest req) {
        reservationsService.insertReservation(reservation);
        req.setAttribute("reservations", reservationsService.getAllReservations());
        req.setAttribute("mode", "MODE_RESERVATIONS");
        return "redirect:/Rezervace";
    }


    @RequestMapping(value = "/search-reservation")
    public String searchReservation(@ModelAttribute String name, HttpServletRequest req) {
        req.setAttribute("reservations", reservationsService.getSearchedReservations(name));
        req.setAttribute("mode", "MODE_RESERVATIONSSEARCH");
        return "redirect:/Rezervace";
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
    @RequestMapping(value = "/saveUpdate-reservation")
    public String saveUpdateReservation(@ModelAttribute Reservation reservation, HttpServletRequest req) {
        reservationsService.updateReservation(reservation);
        req.setAttribute("reservations", reservationsService.getAllReservations());
        req.setAttribute("mode", "MODE_RESERVATIONS");
        return "redirect:/Rezervace";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/login?logout";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
    }

    @RequestMapping(value = "/denied", method = RequestMethod.GET)
    public String deniedPage(HttpServletRequest request, HttpServletResponse response) {
        return "redirect:/login?denied";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
    }


}
