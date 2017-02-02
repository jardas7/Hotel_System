package com.Entity;

import javax.persistence.CascadeType;
import javax.persistence.OneToMany;
import java.util.Set;

/**
 * Jaromir Hnik, Lenka Folprechtova
 * Hotel System, PPRO FIM UHK
 */

public class RoomCategory {
    private String subscribe;
    private int id;
    private int capacity;
    private Set<Reservation> reservations;

    public RoomCategory(String subscribe, int id, int capacity) {
        this.subscribe = subscribe;
        this.id = id;
        this.capacity = capacity;
    }

    public RoomCategory() {
    }

    public String getSubscribe() {
        return subscribe;
    }

    public void setSubscribe(String subscribe) {
        this.subscribe = subscribe;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public Set<Reservation> getReservations() {
        return reservations;
    }

    @OneToMany(mappedBy = "bookCategory", cascade = CascadeType.ALL)
    public void setReservations(Set<Reservation> reservations) {
        this.reservations = reservations;
    }
}
