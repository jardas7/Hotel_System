package com.Controllers;

import com.Entity.User;
import com.Services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;

import static org.springframework.http.MediaType.*;

/**
 * Jaromir Hnik, Lenka Folprechtova
 * Hotel System, PPRO FIM UHK
 */

@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(method = RequestMethod.GET)
    public Collection<User> getAllUsers() {

        return userService.getAllUsers();
    }

    @RequestMapping(value = "/{Id}", method = RequestMethod.GET)
    public User getUserById(@PathVariable("Id") int Id) {
        return userService.getUserById(Id);
    }

    @RequestMapping(value = "/{Id}", method = RequestMethod.DELETE)
    public void removeUserById(@PathVariable("Id") int id) {
        userService.removeUserById(id);
    }


    @RequestMapping(method = RequestMethod.PUT, consumes = APPLICATION_JSON_VALUE)
    public void removeUserById(@RequestBody User user) {
        userService.updateUser(user);
    }

    @RequestMapping(method = RequestMethod.POST, consumes = APPLICATION_JSON_VALUE)
    public void insertUser(@RequestBody User user) {
        userService.insertUser(user);
    }
}
