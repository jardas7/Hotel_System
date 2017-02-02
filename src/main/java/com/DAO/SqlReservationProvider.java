package com.DAO;

import com.Entity.Reservation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Jaromir Hnik, Lenka Folprechtova
 * Hotel System, PPRO FIM UHK
 */


@Repository("reservations")
public class SqlReservationProvider implements ReservationsDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    private static class ReservationsRowMapper implements RowMapper<Reservation> {

        @Override
        public Reservation mapRow(ResultSet resultSet, int i) throws SQLException {
            Reservation reservation = new Reservation();
            reservation.setId(resultSet.getInt("id"));
            reservation.setName(resultSet.getString("name"));
            reservation.setDescription(resultSet.getString("description"));
            reservation.setEmail(resultSet.getString("email"));
            reservation.setType(resultSet.getInt("type"));
            reservation.setTel(resultSet.getString("tel"));
            reservation.setDate1(resultSet.getString("date1"));
            reservation.setDate2(resultSet.getString("date2"));
            return reservation;
        }
    }

    @Override
    public Reservation getSearchedReservations(String name) {
        final String sql = "SELECT id, name, email, tel, description, type, date1, date2 FROM reservations where id = ?";
        Reservation reservationList = jdbcTemplate.queryForObject(sql, new ReservationsRowMapper(), name);
        return reservationList;
    }

    @Override
    public List<Reservation> getAllReservations() {
        final String sql = "SELECT id, name, type, email, tel, description, date1, date2 FROM reservations";
        List<Reservation> reservationList = jdbcTemplate.query(sql, new ReservationsRowMapper());
        return reservationList;
    }

    @Override
    public Reservation getReservationById(int id) {
        final String sql = "SELECT id, name, type, email, tel, description, date1, date2 FROM reservations where id = ?";
        Reservation user = jdbcTemplate.queryForObject(sql, new ReservationsRowMapper(), id);
        return user;
    }


    @Override
    public void removeReservationById(int id) {
        final String sql = "DELETE FROM reservations WHERE id = ?";
        jdbcTemplate.update(sql, id);

    }


    @Override
    public void updateReservation(Reservation reservation) {
        final String sql = "UPDATE reservations SET name = ?, type = ?, email = ?, tel = ?, description = ?, date1 = ?, date2 = ? WHERE id = ?";
        final int id = reservation.getId();
        final String name = reservation.getName();
        final int type = reservation.getType();
        final String email = reservation.getEmail();
        final String tel = reservation.getTel();
        final String date1 = reservation.getDate1();
        final String date2 = reservation.getDate2();
        final String description = reservation.getDescription();
        jdbcTemplate.update(sql, new Object[]{name, type, email, tel, description, date1, date2, id});

    }


    @Override
    public void insertReservationToDb(Reservation reservation) {
        final String sql = "INSERT INTO reservations (name, type, email, tel, description, date1, date2) VALUES (?, ?, ?, ?, ?, ?, ?)";
        final String name = reservation.getName();
        final int type = reservation.getType();
        final String email = reservation.getEmail();
        final String tel = reservation.getTel();
        final String date1 = reservation.getDate1();
        final String date2 = reservation.getDate2();
        final String description = reservation.getDescription();
        jdbcTemplate.update(sql, new Object[]{name, type, email, tel, description, date1, date2});

    }
}
