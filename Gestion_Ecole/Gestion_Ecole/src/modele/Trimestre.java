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
public class Trimestre {
    
    //Attributs
    private int id_trimestre;
    private int numero_trimestre;
    private int date_debut;
    private int date_fin;
    
    //Constructeur par defaut
    public Trimestre(){
        id_trimestre=0;
        numero_trimestre=0;
        date_debut=0;
        date_fin=0;
    }
    
    //Constructeur surcharge
    public Trimestre(int id_trimestre, int numero_trimestre, int date_debut, int date_fin){
        this.id_trimestre=id_trimestre;
        this.numero_trimestre=numero_trimestre;
        this.date_debut=date_debut;
        this.date_fin=date_fin;
    }
    
    //getter et setter
    public int get_ID_Trimestre(){
        return id_trimestre;
    }
    
    public void set_ID_Trimestre(int id_trimestre){
        this.id_trimestre=id_trimestre;
    }
    
    public int get_Numero_Trimestre(){
        return numero_trimestre;
    }
    
    public void set_Numero_Trimestre(int numero_trimestre){
        this.numero_trimestre=numero_trimestre;
    }
    
    public int get_Date_Debut(){
        return date_debut;
    }
    
    public void set_Date_Debut(int date_debut){
        this.date_debut=date_debut;
    }
    
    public int get_Date_Fin(){
        return date_fin;
    }
    
    public void set_Date_Fin(int date_fin){
        this.date_fin=date_fin;
    }
    
}
