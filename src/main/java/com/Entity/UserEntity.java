package com.Entity;

/**
 * Jaromir Hnik, Lenka Folprechtova
 * Hotel System, PPRO FIM UHK
 */

public class UserEntity {

    private int id;
    private String name;
    private String surname;
    private String login;
    private String password;
    private String role;

    public UserEntity(int id, String name, String surname, String login, String password, String role) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.login = login;
        this.password = password;
        this.role = role;
    }

    public UserEntity() {

    }

    public int getId() {
        return id;
    }

    public void setId(int ID) {
        id = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name +
                ", surname='" + surname +
                ", login='" + login +
                ", password='" + password +
                ", role='" + role +
                '}';
    }
}
