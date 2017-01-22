package com.DAO;

import com.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;
import java.util.List;

/**
 * Jaromir Hnik, Lenka Folprechtova
 * Hotel System, PPRO FIM UHK
 */

@Repository("mysql")
public class SqlUserProvider implements UserDao {


    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private JdbcTemplate jdbcTemplate;

    private static class UserRowMapper implements RowMapper<User>{


        @Override
        public User mapRow(ResultSet resultSet, int i) throws SQLException {
            User user = new User();
            user.setId(resultSet.getInt("id"));
            user.setName(resultSet.getString("name"));
            user.setSurname(resultSet.getString("surname"));
            user.setLogin(resultSet.getString("login"));
            user.setPassword(resultSet.getString("password"));
            return user;
        }
    }

    @Override
    public Collection<User> getAllUsers() {
        final String sql = "SELECT id, name, surname, login, password FROM users";
        List<User> users = jdbcTemplate.query(sql, new UserRowMapper());
        return users;
    }

    @Override
    public User getUserById(int id) {
        final String sql = "SELECT id, name, surname, login, password FROM users where id = ?";
        User user = jdbcTemplate.queryForObject(sql, new UserRowMapper(), id);
        return user;
    }

    @Override
    public void removeUserById(int id) {
        final String sql = "DELETE FROM users WHERE id = ?";
        jdbcTemplate.update(sql, id);

    }

    @Override
    public void updateUser(User user) {
        final String sql = "UPDATE users SET name = ?, surname = ?, login = ?, password = ? WHERE id = ?";
        final int id = user.getId();
        final String name = user.getName();
        final String surname = user.getSurname();
        final String login = user.getLogin();
        final String password = user.getPassword();
        jdbcTemplate.update(sql, new Object[]{name, surname, login, password, id});

    }

    @Override
    public void insertUserToDB(User user) {
        final String sql = "INSERT INTO users (name, surname, login, password) VALUES (?, ?, ?, ?)";
        final String name = user.getName();
        final String surname = user.getSurname();
        final String login = user.getLogin();
        final String password = user.getPassword();
        jdbcTemplate.update(sql, new Object[]{name, surname, login, password});

    }
}
