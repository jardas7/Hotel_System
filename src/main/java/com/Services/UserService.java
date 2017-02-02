package com.Services;

import com.DAO.UserDao;
import com.Entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Collection;

/**
 * Jaromir Hnik, Lenka Folprechtova
 * Hotel System, PPRO FIM UHK
 */

@Service
@Transactional
public class UserService {

    @Autowired
    @Qualifier("mysql")
    private UserDao userDaoProvider;

    public UserService(UserDao userDao) {
        this.userDaoProvider = userDao;
    }

    public Collection<UserEntity> getAllUsers() {
        return this.userDaoProvider.getAllUsers();
    }

    public UserEntity getUserById(int id) {
        return this.userDaoProvider.getUserById(id);
    }

    public void removeUserById(int id) {
        this.userDaoProvider.removeUserById(id);
    }

    public UserEntity getUserByUsername(String login) {
        return this.userDaoProvider.getUserByUsername(login);
    }

    public void updateUser(UserEntity user) {
        this.userDaoProvider.updateUser(user);
    }

    public void insertUser(UserEntity user) {
        this.userDaoProvider.insertUserToDB(user);
    }
}
