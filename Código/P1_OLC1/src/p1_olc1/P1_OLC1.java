package p1_olc1;

import GUI.*;
import com.jtattoo.plaf.mcwin.McWinLookAndFeel;
import java.io.StringReader;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;
import javax.swing.text.html.HTMLEditorKit.Parser;


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

        //GUI nuevaGUI = new GUI();
        //nuevaGUI.setVisible(true);
        
        
//       analizadores("src/statpy/", "Lexer.jflex", "Parser.cup");        
        String entrada = """
                         // Hola Huecos
                         // xdd -   f 5zx
                         /* jfklñdjlñkfajf
                         xdf
                         df
                              */
                         Console.Write("holiwi");
                         Console.WriTe(5);
                         console.write(6.5);
                         """;
        
        analizar(entrada);
  
        
    }
    
  
    
    public static void analizadores(String ruta, String jflexFile, String cupFile){
        try {
            String opcionesJflex[] =  {ruta+jflexFile,"-d",ruta};
            jflex.Main.generate(opcionesJflex);

            String opcionesCup[] =  {"-destdir", ruta,"-parser","Parser",ruta+cupFile};
            java_cup.Main.main(opcionesCup);
            
        } catch (Exception e) {
            System.out.println("No se ha podido generar los analizadores");
            System.out.println(e);
        }
        
    }
    
     public static void analizar (String entrada){
         try {
             statpy.Lexer lexer = new statpy.Lexer(new StringReader(entrada)); 
             statpy.Parser parser = new statpy.Parser(lexer);
             parser.parse();
         } catch (Exception e) {
             System.out.println("Error fatal en compilación de entrada.");
             System.out.println(e);
         } 
     } 
    
    
    

     
}


