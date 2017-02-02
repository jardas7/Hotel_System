package com.Services;


import com.DAO.UserDao;
import com.Entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Arrays;

/**
 * Jaromir Hnik, Lenka Folprechtova
 * Hotel System, PPRO FIM UHK
 */

@Service
public class AutenticationService implements UserDetailsService {

    @Autowired
    private UserDao userDao;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserEntity user = userDao.getUserByUsername(username);
        GrantedAuthority authority = new SimpleGrantedAuthority(user.getRole());
        User userDetails = new User(user.getLogin(), user.getPassword(), Arrays.asList(new GrantedAuthority[]{authority}));
        return userDetails;
    }
}
