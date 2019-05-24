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
public class Enseignement {
        
    //Attribut
    private int id_enseignement;
    
    //Constructeur par defaut
    public Enseignement(){
        id_enseignement=0;
    }
    
    //Constructeur surcharge
    public Enseignement(int id_enseignement){
        this.id_enseignement=id_enseignement;
    }
    
    //getter et setter
    public int get_ID_Enseignement(){
        return id_enseignement;
    }
    
    public void set_ID_Enseignement(int id_enseignement){
        this.id_enseignement=id_enseignement;
    }
    
}
