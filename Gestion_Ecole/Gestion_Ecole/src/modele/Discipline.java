/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

/**
 *
 * @author coline
 */
public class Discipline {
        
    //Attribut
    private int id_discipline;
    private String nom_discipline;
    
    //Constructeur par defaut
    public Discipline(){
        id_discipline=0;
        nom_discipline=null;
    }
    
    //Constructeur surcharge
    public Discipline(int id_discipline, String nom_discipline){
        this.id_discipline=id_discipline;
        this.nom_discipline=nom_discipline;
    }
    
    //getter et setter
    public int get_ID_Discipline(){
        return id_discipline;
    }
    
    public void set_ID_Discipline(int id_discipline){
        this.id_discipline=id_discipline;
    }
    
    public String get_Nom_Discipline(){
        return nom_discipline;
    }
    
    public void set_Nom_Discipline(String nom_discipline){
        this.nom_discipline=nom_discipline;
    }
    
}
