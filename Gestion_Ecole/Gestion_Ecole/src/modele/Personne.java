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
public class Personne {
        
    //Attributs
    private int id_personne;
    private String nom_personne;
    private String prenom_personne;
    private String type_personne;
    
    //Constructeur par defaut
    public Personne(){
        id_personne=0;
        nom_personne=null;
        prenom_personne=null;
        type_personne=null;
    }
    
    //Constructeur surcharge
    public Personne(int id_personne, String nom_personne, String prenom_personne, String type_personne){
        this.id_personne=id_personne;
        this.nom_personne=nom_personne;
        this.prenom_personne=prenom_personne;
        this.type_personne=type_personne;
    }
    
    //getter et setter
    public int get_ID_Personne(){
        return id_personne;
    }
    
    public void set_ID_Personne(int id_personne){
        this.id_personne=id_personne;
    }
    
    public String get_Nom_Personne(){
        return nom_personne;
    }
    
    public void set_Nom_Personne(String nom_personne){
        this.nom_personne=nom_personne;
    }
    
    public String get_Prenom_Personne(){
        return prenom_personne;
    }
    
    public void set_Prenom_Personne(String prenom_personne){
        this.prenom_personne=prenom_personne;
    }
    
    public String get_Type_Personne(){
        return type_personne;
    }
    
    public void set_Type_Personne(String type_personne){
        this.type_personne=type_personne;
    }
    
}
