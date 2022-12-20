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
public class Donateur {
    
    private long visa;
    private String nom;
    private String mail;
    private long montant;
    private String project;

    public Donateur(long visa, String nom, String mail, long montant, String project) {
        this.visa = visa;
        this.nom = nom;
        this.mail = mail;
        this.montant = montant;
        this.project=project;
    }

    public long getVisa() {
        return visa;
    }

    public void setVisa(int visa) {
        this.visa = visa;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public long getMontant() {
        return montant;
    }

    public void setMontant(int montant) {
        this.montant = montant;
    }

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project;
    }

    
    
}
