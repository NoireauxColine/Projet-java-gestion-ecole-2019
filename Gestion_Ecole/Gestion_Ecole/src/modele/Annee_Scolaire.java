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
public class Annee_Scolaire {
        //Attributs
    private int id_annee_scolaire;
    
    //Constructeur par defaut
    public Annee_Scolaire(){
        id_annee_scolaire=0;
    }
    
    //Constructeur surcharge
    public Annee_Scolaire(int id_annee_scolaire){
        this.id_annee_scolaire=id_annee_scolaire;
    }
    
    //getter et setter
    public int get_ID_Annee(){
        return id_annee_scolaire;
    }
    
    public void set_ID_Annee(int id_annee_scolaire){
        this.id_annee_scolaire=id_annee_scolaire;
    }
    
}
