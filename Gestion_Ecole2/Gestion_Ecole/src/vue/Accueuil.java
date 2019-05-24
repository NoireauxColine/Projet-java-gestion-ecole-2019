/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vue;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Label;
import java.awt.TextField;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;

/**
 *
 * @author mathi
 */

public class Accueuil extends JFrame{
    
 
    
 


  public Accueuil(){
      
      
	
    this.setTitle("Page d'Acceuil");
    this.setSize(400, 500);
    this.setLocationRelativeTo(null);
    this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);  
   this.setLayout(new FlowLayout());

    TextField t=new TextField(30);

    
    TextField t2=new TextField(30);
  
    JButton button=new JButton("Envoye");
    
    this.add(new Label("Login"));
        this.add(t);
         this.add(new Label("Password"));
        this.add(t2);
    this.add(button);
    
      this.pack();
    this.setVisible(true);
    
 
  }
}      
   


