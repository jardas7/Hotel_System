package com.DAO;

import com.Entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
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


    @Autowired
    private JdbcTemplate jdbcTemplate;

    public void setDataSource(DataSource dataSource){
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    private static class UserRowMapper implements RowMapper<UserEntity>{


        @Override
        public UserEntity mapRow(ResultSet resultSet, int i) throws SQLException {
            UserEntity user = new UserEntity();
            user.setId(resultSet.getInt("id"));
            user.setName(resultSet.getString("name"));
            user.setSurname(resultSet.getString("surname"));
            user.setLogin(resultSet.getString("login"));
            user.setPassword(resultSet.getString("password"));
            user.setRole(resultSet.getString("role"));
            return user;
        }
    }

    @Override
    public List<UserEntity> getAllUsers() {
        final String sql = "SELECT id, name, surname, login, password, role FROM users";
        List<UserEntity> users = jdbcTemplate.query(sql, new UserRowMapper());
        return users;
    }

    @Override
    public UserEntity getUserById(int id) {
        final String sql = "SELECT id, name, surname, login, password, role FROM users where id = ?";
        UserEntity user = jdbcTemplate.queryForObject(sql, new UserRowMapper(), id);
        return user;
    }

    @Override
    public void removeUserById(int id) {
        final String sql = "DELETE FROM users WHERE id = ?";
        jdbcTemplate.update(sql, id);

    }

    @Override
    public UserEntity getUserByUsername(String login) {
        final String sql = "SELECT id, name, surname, login, password, role FROM users where login = ?";
        UserEntity user = jdbcTemplate.queryForObject(sql, new UserRowMapper(), login);
        return user;

    }

    @Override
    public void updateUser(UserEntity user) {
        final String sql = "UPDATE users SET name = ?, surname = ?, login = ?, password = ?, role = ? WHERE id = ?";
        final int id = user.getId();
        final String name = user.getName();
        final String surname = user.getSurname();
        final String login = user.getLogin();
        final String password = user.getPassword();
        final String role = user.getRole();
        jdbcTemplate.update(sql, new Object[]{name, surname, login, password, role, id});

    }

    @Override
    public void insertUserToDB(UserEntity user) {
        final String sql = "INSERT INTO users (name, surname, login, password, role) VALUES (?, ?, ?, ?, ?)";
        final String name = user.getName();
        final String surname = user.getSurname();
        final String login = user.getLogin();
        final String password = user.getPassword();
        final String role = user.getRole();
        jdbcTemplate.update(sql, new Object[]{name, surname, login, password, role});

    }
}
