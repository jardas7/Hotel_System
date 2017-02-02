package com.Entity;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 * Jaromir Hnik, Lenka Folprechtova
 * Hotel System, PPRO FIM UHK
 */

public class Reservation {
    private int id;
    private String name;
    private int type;
    private String email;
    private String tel;
    private String description;
    private String date1;
    private String date2;

    public Reservation() {
    }

    public Reservation(int id, String name, int type, String email, String tel, String description, String date1, String date2) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.email = email;
        this.tel = tel;
        this.description = description;
        this.date1 = date1;
        this.date2 = date2;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @ManyToOne
    @JoinColumn(name = "rooms_id")
    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDate1() {
        return date1;
    }

    public void setDate1(String date1) {
        this.date1 = date1;
    }

    public String getDate2() {
        return date2;
    }

    public void setDate2(String date2) {
        this.date2 = date2;
    }
}
