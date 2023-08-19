package p1_olc1;

import GUI.*;
import com.jtattoo.plaf.mcwin.McWinLookAndFeel;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

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
    }

}
