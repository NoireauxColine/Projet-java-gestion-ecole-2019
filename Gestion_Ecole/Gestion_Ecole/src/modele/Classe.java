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
public class Classe {
        
    //Attributs
    private int id_classe;
    private String nom_classe;
    
    //Constructeur par defaut
    public Classe(){
        id_classe=0;
        nom_classe=null;
    }
    
    //Constructeur surcharge
    public Classe(int id_classe, String nom_classe){
        this.id_classe=id_classe;
        this.nom_classe=nom_classe;
    }
    
    //getter et setter
    public int get_ID_Classe(){
        return id_classe;
    }
    
    public void set_ID_Classe(int id_classe){
        this.id_classe=id_classe;
    }
    
    public String get_Nom_Classe(){
        return nom_classe;
    }
    
    public void set_Nom_Classe(String nom_classe){
        this.nom_classe=nom_classe;
    }
    
}
