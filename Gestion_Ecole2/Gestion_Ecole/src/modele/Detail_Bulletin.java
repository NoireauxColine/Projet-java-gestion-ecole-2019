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
public class Detail_Bulletin {
    
    //Attributs
    private int id_detail_bulletin;
    private String appreciation_detail;
    
    //Constructeur par defaut
    public Detail_Bulletin(){
        id_detail_bulletin=0;
        appreciation_detail=null;
    }
    
    //Constructeur surcharge
    public Detail_Bulletin(int id_detail_bulletin, String appreciation_detail){
        this.id_detail_bulletin=id_detail_bulletin;
        this.appreciation_detail=appreciation_detail;
    }
    
    //getter et setter
    public int get_ID_Detail(){
        return id_detail_bulletin;
    }
    
    public void set_ID_Detail(int id_detail_bulletin){
        this.id_detail_bulletin=id_detail_bulletin;
    }
    
    public String get_Appreciation_Detail(){
        return appreciation_detail;
    }
    
    public void set_Appreciation_Detail(String appreciation_detail){
        this.appreciation_detail=appreciation_detail;
    }
    
}
