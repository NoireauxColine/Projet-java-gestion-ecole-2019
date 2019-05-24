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
public class Inscription {
        
    //Attributs
    private int id_inscription;
    
    //Constructeur par defaut
    public Inscription(){
        id_inscription=0;
    }
    
    //Constructeur surcharge
    public Inscription(int id_inscription){
        this.id_inscription=id_inscription;
    }
    
    //getter et setter
    public int get_ID_Inscription(){
        return id_inscription;
    }
    
    public void set_ID_Inscription(int id_inscription){
        this.id_inscription=id_inscription;
    }
    
}
