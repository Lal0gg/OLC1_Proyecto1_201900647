/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package func;


import java.util.HashMap;
import javax.swing.JOptionPane;
import java.awt.List;
import java.util.ArrayList;
import clases.Token;
import clases.Erroor;


/**
 *
 * @author edujr
 */

public class Funcion {
    
    public static ArrayList<Token> TokenList = new ArrayList<>();
    
 
    public static ArrayList<Erroor> ErrorList = new ArrayList<>();


  
   public static String ConsoleWrite(String expresion){
        return "System.out.println("+expresion+");";
    } 
}
