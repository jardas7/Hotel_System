package com.Entity;

/**
 * Jaromir Hnik, Lenka Folprechtova
 * Hotel System, PPRO FIM UHK
 */

public class User {

    private int id;
    private String Name;
    private String Surname;
    private String Login;
    private String Password;

    public User(int ID, String name, String surname, String login, String password) {
        id = ID;
        Name = name;
        Surname = surname;
        Login = login;
        Password = password;
    }

    public User() {

    }

    public int getId() {
        return id;
    }

    public void setId(int ID) {
        id = ID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getSurname() {
        return Surname;
    }

    public void setSurname(String surname) {
        Surname = surname;
    }

    public String getLogin() {
        return Login;
    }

    public void setLogin(String login) {
        Login = login;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }
}
