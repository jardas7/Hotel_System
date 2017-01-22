package com.DAO;

import com.Entity.User;

import java.util.Collection;

/**
 * Jaromir Hnik, Lenka Folprechtova
 * Hotel System, PPRO FIM UHK
 */

public interface UserDao {
    Collection<User> getAllUsers();

    User getUserById(int id);

    void removeUserById(int id);

    void updateUser(User user);

    void insertUserToDB(User user);
}
