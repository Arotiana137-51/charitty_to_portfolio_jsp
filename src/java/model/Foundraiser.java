/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Arotiana's
 */
public class Foundraiser {
    private String mail;
    private long founderVisa;
    private String password;
    private String project;

    public Foundraiser(String mail, long founderVisa, String password, String project) {
        this.mail = mail;
        this.founderVisa = founderVisa;
        this.password = password;
        this.project = project;
    }

    public Foundraiser(String mail, String password) {
        this.mail = mail;
        this.password = password;
    }

    
    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public long getFounderVisa() {
        return founderVisa;
    }

    public void setFounderVisa(long founderVisa) {
        this.founderVisa = founderVisa;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project;
    }
    
    
}
