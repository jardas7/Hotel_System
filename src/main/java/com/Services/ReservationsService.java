package com.Services;

import com.DAO.ReservationsDao;
import com.Entity.Reservation;
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
public class ReservationsService {

    @Autowired
    @Qualifier("reservations")
    private ReservationsDao reservationsDao;

    public ReservationsService(ReservationsDao reservationsDao) {
        this.reservationsDao = reservationsDao;
    }

    public Collection<Reservation> getAllReservations() {
        return this.reservationsDao.getAllReservations();
    }

    public Reservation getSearchedReservations(String name) {
        return this.reservationsDao.getSearchedReservations(name);
    }

    public Reservation getReservationById(int id) {
        return this.reservationsDao.getReservationById(id);
    }

    public void removeReservationById(int id) {
        this.reservationsDao.removeReservationById(id);
    }

    public void updateReservation(Reservation reservation) {
        this.reservationsDao.updateReservation(reservation);
    }

    public void insertReservation(Reservation reservation) {
        this.reservationsDao.insertReservationToDb(reservation);
    }
}
