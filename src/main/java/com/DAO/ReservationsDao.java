package com.DAO;

import com.Entity.Reservation;

import java.util.List;

/**
 * Jaromir Hnik, Lenka Folprechtova
 * Hotel System, PPRO FIM UHK
 */

public interface ReservationsDao {
    List<Reservation> getAllReservations();

    Reservation getSearchedReservations(String name);

    Reservation getReservationById(int id);

    void removeReservationById(int id);

    void updateReservation(Reservation reservation);

    void insertReservationToDb(Reservation reservation);
}
