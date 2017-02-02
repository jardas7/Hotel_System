package com.DAO;

import com.Entity.RoomCategory;

import java.util.List;

/**
 * Jaromir Hnik, Lenka Folprechtova
 * Hotel System, PPRO FIM UHK
 */

public interface RoomCategoryDao {
    RoomCategory getRoomCategory(int id);

    RoomCategory getCapacity(int id);

    void setCapacityNew(RoomCategory room, int id);

    void setCapacityDelete(RoomCategory room, int id);

    List<RoomCategory> getRooms();
}
