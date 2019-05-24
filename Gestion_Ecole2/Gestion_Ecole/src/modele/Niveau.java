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
public class Niveau {
        
    //Attributs
    private int id_niveau;
    private String nom_niveau;
    
    //Constructeur par defaut
    public Niveau(){
        id_niveau=0;
        nom_niveau=null;
    }
    
    //Constructeur surcharge
    public Niveau(int id_niveau, String nom_niveau){
        this.id_niveau=id_niveau;
        this.nom_niveau=nom_niveau;
    }
    
    //getter et setter
    public int get_ID_Niveau(){
        return id_niveau;
    }
    
    public void set_ID_niveau(int id_niveau){
        this.id_niveau=id_niveau;
    }
    
    public String get_Nom_Niveau(){
        return nom_niveau;
    }
    
    public void set_Nom_Niveau(String nom_niveau){
        this.nom_niveau=nom_niveau;
    }
    
}
