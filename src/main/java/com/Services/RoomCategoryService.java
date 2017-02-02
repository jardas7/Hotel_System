package com.Services;

import com.DAO.RoomCategoryDao;
import com.Entity.RoomCategory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Jaromir Hnik, Lenka Folprechtova
 * Hotel System, PPRO FIM UHK
 */

@Service
@Transactional
public class RoomCategoryService {

    @Autowired
    @Qualifier("categories")
    private RoomCategoryDao roomCategoryDao;

    public RoomCategoryService(RoomCategoryDao roomCategoryDao) {
        this.roomCategoryDao = roomCategoryDao;
    }

    public RoomCategory getRoomCategory(int id) {
        return this.roomCategoryDao.getRoomCategory(id);
    }

    public void setCapacityNew(RoomCategory room, int id) {
        this.roomCategoryDao.setCapacityNew(room, id);
    }

    public void setCapacityDelete(RoomCategory room, int id) {
        this.roomCategoryDao.setCapacityDelete(room, id);
    }

    public List<RoomCategory> getRooms() {
        return this.roomCategoryDao.getRooms();
    }

    public RoomCategory getCapacity(int id){ return this.roomCategoryDao.getCapacity(id);}

}
