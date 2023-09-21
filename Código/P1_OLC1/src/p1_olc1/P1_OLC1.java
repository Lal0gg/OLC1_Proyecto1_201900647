package p1_olc1;

import GUI.*;
import com.jtattoo.plaf.mcwin.McWinLookAndFeel;
import java.io.StringReader;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;
import javax.swing.text.html.HTMLEditorKit.Parser;
import func.*;
import clases.Erroor;
import clases.Token;
import clases.Simbolito;
import static func.Funcion.TokenList;
import graficas.GraficaBarras;
import java.util.LinkedList;


import javax.swing.JOptionPane;
import traductionPy.indentPy;

/**
 *
 * @author edujr
 */
public class P1_OLC1 {

    public static void main(String[] args) {
//        try {
//            UIManager.setLookAndFeel(new McWinLookAndFeel());
//        } catch (UnsupportedLookAndFeelException e) {
//            System.err.println("No se pudo aplicar el Look and Feel deseado: " + e.getMessage());
//            e.printStackTrace();
//        }
//        
//
//        GUI nuevaGUI = new GUI();
//        nuevaGUI.setVisible(true);
        
    analizadorStatpy("src/statpy/", "Lexer.jflex", "Parser.cup");
 //       analizadorJson("src/json/","Lexer.jflex","Parser.cup");

  

    }

    public static void analizadorStatpy(String ruta, String jflexFile, String cupFile) {

        try {

            String opcionesJflex[] = {ruta + jflexFile, "-d", ruta};
            jflex.Main.generate(opcionesJflex);

            String opcionesCup[] = {"-destdir", ruta, "-parser", "Parser", ruta + cupFile};
            java_cup.Main.main(opcionesCup);

        } catch (Exception e) {
            System.out.println("No se ha podido generar los analizadores");
            System.out.println(e);
        }

    }

    public static void analizadorJson(String ruta, String jflexFile, String cupFile) {
        try {
            String opcionesJflex[] = {ruta + jflexFile, "-d", ruta};
            jflex.Main.generate(opcionesJflex);

            String opcionesCup[] = {"-destdir", ruta, "-parser", "Parser", ruta + cupFile};
            java_cup.Main.main(opcionesCup);

        } catch (Exception e) {
            System.out.println("No se ha podido generar los analizadores");
            System.out.println(e);
        }

    }

    public static void analizarStatpy(String entrada) {
        try {
            TokenList.clear();
            statpy.Lexer lexer = new statpy.Lexer(new StringReader(entrada));
            statpy.Parser parser = new statpy.Parser(lexer);
            parser.parse();
            System.out.println("Se analizó correctamente el archivo SP :D");
            JOptionPane.showMessageDialog(null, "Analisis Sp generado con éxito :D");

        } 
        catch (Exception e) {
            System.out.println("Error fatal en compilación de entrada.");
            System.out.println(e);
        }
    }

    public static void analizarJson(String entrada) {
        try {
            json.Lexer lexer = new json.Lexer(new StringReader(entrada));
            json.Parser parser = new json.Parser(lexer);
            parser.parse();
            System.out.println("Se analizó correctamente el archivo JSON :D ");
            JOptionPane.showMessageDialog(null, "Analisis Json generado con éxito :D");
        } catch (Exception e) {
            System.out.println("Error fatal en compilación de entrada.");
            System.out.println(e);
        }
    }

    
      public static String indentText(String text, int level) {
        if (level == 0) {
            return text;
        } else {
            return "    " + indentText(text, level - 1);
        }
    }  
  

}
