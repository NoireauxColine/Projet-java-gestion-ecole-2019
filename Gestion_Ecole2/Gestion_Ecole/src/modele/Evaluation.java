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
public class Evaluation {
        
    //Attributs
    private int id_evaluation;
    private float note_evaluation;
    private String appreciation_evaluation;
    
    //Constructeur par defaut
    public Evaluation(){
        id_evaluation=0;
        note_evaluation=0;
        appreciation_evaluation=null;
    }
    
    //Constructeur surcharge
    public Evaluation(int id_evaluation, float note_evaluation, String appreciation_evaluation){
        this.id_evaluation=id_evaluation;
        this.note_evaluation=note_evaluation;
        this.appreciation_evaluation=appreciation_evaluation;
    }
    
    //getter et setter
    public int get_ID_Evaluation(){
        return id_evaluation;
    }
    
    public void set_ID_Evaluation(int id_evaluation){
        this.id_evaluation=id_evaluation;
    }
    
    public float get_Note_Evaluation(){
        return note_evaluation;
    }
    
    public void set_Note_Evaluation(float note_evaluation){
        this.note_evaluation=note_evaluation;
    }
    
    public String get_Appreciation_Evaluation(){
        return appreciation_evaluation;
    }
    
    public void set_Appreciation_Evaluation(String appreciation_evaluation){
        this.appreciation_evaluation=appreciation_evaluation;
    }
    
}
