package com.DAO;

import com.Entity.RoomCategory;
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

@Repository("categories")
public class SqlRoomCategoryProvider implements RoomCategoryDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    private static class RoomCategoryRowMapper implements RowMapper<RoomCategory> {

        @Override
        public RoomCategory mapRow(ResultSet resultSet, int i) throws SQLException {
            RoomCategory roomCategory = new RoomCategory();
            roomCategory.setId(resultSet.getInt("id"));
            roomCategory.setSubscribe(resultSet.getString("subscribe"));
            roomCategory.setCapacity(resultSet.getInt("capacity"));
            return roomCategory;
        }
    }

    @Override
    public List<RoomCategory> getRooms() {
        final String sql = "SELECT id, subscribe, capacity FROM rooms";
        List<RoomCategory> roomCategory = jdbcTemplate.query(sql, new RoomCategoryRowMapper());
        return roomCategory;
    }

    @Override
    public RoomCategory getRoomCategory(int id) {
        final String sql = "SELECT id, subscribe, capacity FROM rooms where id = ?";
        RoomCategory roomCategory = jdbcTemplate.queryForObject(sql, new RoomCategoryRowMapper(), id);
        return roomCategory;
    }

    @Override
    public RoomCategory getCapacity(int id) {
        final String sql = "SELECT capacity FROM rooms where id = ?";
        RoomCategory roomCategory = jdbcTemplate.queryForObject(sql, new RoomCategoryRowMapper(), id);
        return roomCategory;
    }

    @Override
    public void setCapacityNew(RoomCategory room, int id) {
        final String sql = "UPDATE rooms SET subscribe = ?, capacity = ? where id = ?";
        final String subscribe = room.getSubscribe();
        final int capacity = room.getCapacity() - 1;
        jdbcTemplate.update(sql, new Object[]{subscribe, capacity, id});
    }

    @Override
    public void setCapacityDelete(RoomCategory room, int id) {
        final String sql = "UPDATE rooms SET subscribe = ?, capacity = ? WHERE id = ?";
        final String subscribe = room.getSubscribe();
        final int capacity = room.getCapacity() + 1;
        jdbcTemplate.update(sql, new Object[]{subscribe, capacity, id});
    }

}
