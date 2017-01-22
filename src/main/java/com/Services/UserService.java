package com.Services;

import com.DAO.UserDao;
import com.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.Collection;

/**
 * Jaromir Hnik, Lenka Folprechtova
 * Hotel System, PPRO FIM UHK
 */

@Service
public class UserService {

    @Autowired
    @Qualifier("mysql")
    private UserDao userDaoProvider;

    public Collection<User> getAllUsers() {
        return this.userDaoProvider.getAllUsers();
    }

    public User getUserById(int id) {
        return this.userDaoProvider.getUserById(id);
    }

    public void removeUserById(int id) {
        this.userDaoProvider.removeUserById(id);
    }

    public void updateUser(User user) {
        this.userDaoProvider.updateUser(user);
    }

    public void insertUser(User user) {
        this.userDaoProvider.insertUserToDB(user);
    }
}
