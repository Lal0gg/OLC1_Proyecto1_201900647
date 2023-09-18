/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package func;


import java.util.HashMap;
import javax.swing.JOptionPane;
import java.awt.List;
import clases.Token;
import clases.Erroor;
import clases.Simbolito;
import java.util.LinkedList;


/**
 *
 * @author edujr
 */

public class Funcion {
    
    
    public static LinkedList<Token> TokenList = new LinkedList<>();
    
 
    public static LinkedList<Erroor> ErrorList = new LinkedList<>();

    public static LinkedList<Erroor> TokenListJson = new LinkedList<>();
    
    public static LinkedList<Erroor> ErrorListJson = new LinkedList<>();
    
    public static LinkedList<Simbolito> ListaSimbolos = new LinkedList<>();
    
    public static LinkedList<String> ListaTraducccionPy = new LinkedList<>();
    
    public static int ContadorIndentacion =0;
    
    
    public static LinkedList<String> ListaSimbolosParaHash = new LinkedList<>();
    
    //            nameVariable -- valorvariable
    public static HashMap<String, LinkedList<Simbolito>> HashMapFileJson = new HashMap<>();
    //            nameArchivoJson -- HashmapVariable
    public static HashMap<String, String> HashMapVariablesJson = new HashMap<>();

   
   public static String ConsoleWrite(String expresion){
        
        return "System.out.println("+expresion+");";
        
    } 
   
   
   public static LinkedList<String> IndentacionPY (LinkedList<String> ListaTPY){
       String indentPy = "";
       for(int i=0; i<ContadorIndentacion;i++){
           indentPy = "\t"+indentPy;
       }
       
       for(int j=0; j < ListaTPY.size(); j++){
           ListaTPY.set(j, indentPy+ListaTPY.get(j));
       }
       
       return ListaTPY;
       
   }
}
