package com.DAO;

import com.Entity.UserEntity;
import org.springframework.data.repository.CrudRepository;

import java.util.Collection;
import java.util.List;

/**
 * Jaromir Hnik, Lenka Folprechtova
 * Hotel System, PPRO FIM UHK
 */

public interface UserDao {
    List<UserEntity> getAllUsers();

    UserEntity getUserById(int id);

    void removeUserById(int id);

    void updateUser(UserEntity user);

    void insertUserToDB(UserEntity user);

    UserEntity getUserByUsername(String login);
}
