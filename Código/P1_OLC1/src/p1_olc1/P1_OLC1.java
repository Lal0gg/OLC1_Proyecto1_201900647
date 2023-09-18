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
        try {
            UIManager.setLookAndFeel(new McWinLookAndFeel());
        } catch (UnsupportedLookAndFeelException e) {
            System.err.println("No se pudo aplicar el Look and Feel deseado: " + e.getMessage());
            e.printStackTrace();
        }
        

        GUI nuevaGUI = new GUI();
        nuevaGUI.setVisible(true);
      
      //  analizadorStatpy("src/statpy/", "Lexer.jflex", "Parser.cup");
        analizadorJson("src/json/", "Lexer.jflex", "Parser.cup");
        String entrada = """
                         // Hola w 
                        // xdd -   f 5zx
                         /* jfklñdjlñkfajf
                         xdf
                         df
                              */
                         Console.Write("holiwi");
                         Console.write(85.5);
                         Console.WriTe(5);
                         console.write(6.5);
                         """;

        //analizarStatpy(entrada);
        String entrada2 = """
                          MOSTRAR ( 2*7 + 3);
                        """;
        //analizarJson(entrada2);
        //pruebitaIndentationpy();


//        double[] valores={1.0,5.0,3.5,1.5,2.2};
//        String[] encabezaoX={"nota1","nota2","nota3","nota4","nota5"};
//        
//        GraficaBarras.GBarras("Grafica1", "Notas", "Valores", valores, encabezaoX);
//
//
//        
//        System.out.println(indentText("print(\"hola perros\")", 0));


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

        } catch (Exception e) {
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
