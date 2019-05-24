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
public class Bulletin {
       
    //Attributs
    private int id_bulletin;
    private String appreciation_bulletin;
    private float moyenne;
    
    //Constructeur par defaut
    public Bulletin(){
        id_bulletin=0;
        appreciation_bulletin=null;
        moyenne=0;
    }
    
    //Constructeur surcharge
    public Bulletin(int id_bulletin, String appreciation_bulletin, float moyenne){
        
        this.id_bulletin=id_bulletin;
        this.appreciation_bulletin=appreciation_bulletin;
        this.moyenne=moyenne;
    }
    
    //getter et setter
    public int get_ID_Bulletin(){
        return id_bulletin;
    }
    
    public void set_ID_Bulletin(int id_bulletin){
        this.id_bulletin=id_bulletin;
    }
    
    public String get_Appreciation_Bulletin(){
        return appreciation_bulletin;
    }
    
    public void set_Appreciation_Bulletin(String appreciation_bulletin){
        this.appreciation_bulletin=appreciation_bulletin;
    }
    
    public float get_Moyenne(){
        return moyenne;
    }
    
    public void set_Moyenne(float moyenne){
        this.moyenne=moyenne;
    }
    
    
}
