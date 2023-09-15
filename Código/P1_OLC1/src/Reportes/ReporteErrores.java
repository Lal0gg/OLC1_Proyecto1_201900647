/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Reportes;

import clases.Erroor;
import clases.Token;
import static func.Funcion.TokenList;
import java.awt.Desktop;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.LinkedList;
import javax.swing.JOptionPane;

/**
 *
 * @author edujr
 */
public class ReporteErrores {

    StringBuilder contentHtml = new StringBuilder();

    public void ReporteErr(LinkedList<Erroor> errorsitos) {
        HeaderHTML();
        BodyHTML(errorsitos);
        CrearHTML();
        AbrirHTML();

    }
    
    public void HeaderHTML() {
        contentHtml.append("<!DOCTYPE html>\n"
                + "<html lang=\"es\">\n"
                + "<head>\n"
                + "<meta charset=\"UTF-8\">\n"
                + "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                + "<title>Reporte Errores</title>\n"
                + "<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Roboto+Mono&display=swap \">\n"
                + "<style>\n"
                + "header {   \n"
                + "   background-color: #333;\n "
                + "  color: #fff;\n "
                + "padding: 20px; \n"
                + "  text-align: center; \n"
                + " border-radius: 10px;\n"
                + "}\n"
                + "h1 {\n"
                + "   font-size: 36px; \n"
                + "   font-family: 'Roboto Mono', monospace; \n"
                + "}\n"
                + "p {\n"
                + "   font-size: 18px; \n"
                + "   font-family: 'Roboto Mono', monospace;\n"
                + "}\n"
                + "body { \n"
                + "   font-family: 'Arial', sans-serif; \n"
                + "    background-color: #f0f0f0; \n"
                + "    margin: 0; \n"
                + "   padding: 0; \n"
                + "    display: flex;\n"
                + "   flex-direction: column;\n"
                + "  align-items: center;\n"
                + "  justify-content: center;\n"
                + "   min-height: 100vh; \n"
                + "}\n"
                + " main { \n"
                + "  background-color: #8debe5; \n"
                + " padding: 20px;\n"
                + " border-radius: 10px;\n"
                + " margin-top: 20px;\n"
                + " }\n"
                + "table {\n"
                + "   width: 100%;\n"
                + "  border-collapse: collapse; \n"
                + " margin-top: 20px;\n"
                + "}\n"
                + " th, td {\n"
                + "  padding: 10px;\n"
                + "  text-align: center;\n"
                + "  border: 1px solid #ddd;\n"
                + "}\n"
                + " th {\n"
                + "   background-color: #ff9e9e; \n"
                + "   color: #fff; \n"
                + " }\n"
                + " tr:nth-child(even) { \n"
                + "   background-color: #f2f2f2; \n"
                + "}\n"
                + "</style> \n"
                + "</head> \n"
                + "<body>\n"
                + "<header>\n"
                + "<h1>Reporte Errores</h1>\n"
                + "<p>Proyecto 1 de Organizacion de Lenguajes y Compiladores</p>\n"
                + "</header>\n"
        );

    }

    public void BodyHTML(LinkedList<Erroor> errorsitos) {
        contentHtml.append(
                "<main>\n"
                + "<div>\n"
                + "<p>Tabla de Errores</p>\n"
                + "</div>\n"
                + "<table>\n"
                + "<thead>\n"
                + "<tr>\n"
                + "<th>Tipo</th>\n"
                + "<th>Lexema</th>\n"
                + "<th>Descripcion</th>\n"
                + "<th>Linea</th>\n"
                + "<th>Columna</th>\n"
                + "</tr>\n"
                + "</thead>\n"
                + "<tbody>\n");

        for (Erroor errorsito : errorsitos ) {

            contentHtml.append(
                    "<tr>\n"
                    + "<td>" + errorsito.getType()+ "</td>\n"
                    + "<td>" + errorsito.getCharacter()+ "</td>\n"
                    + "<td>" + errorsito.getDescription()+ "</td>\n"
                    + "<td>" + errorsito.getLine()+ "</td>\n"
                    + "<td>" + errorsito.getColumn()+ "</td>\n"
                    + "</tr>\n"
            );

        }

        contentHtml.append("</tbody>\n" 
                + "</table>\n"
                + "</main>\n"
                + "</body>\n"
                + "</html>\n"
        );
        ;

    }

    public void CrearHTML() {
        File reporte1 = new File("ReporteErrores.html");
        try {
            FileWriter escribir = new FileWriter(reporte1);
            escribir.write(contentHtml.toString());
            escribir.close();
            JOptionPane.showMessageDialog(null, "Reporte generado con éxito :D");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void AbrirHTML() {
        try {
            File file = new File("ReporteErrores.html");
            if (!Desktop.isDesktopSupported()) {
                System.out.println("not supported");
                return;
            }
            Desktop desktop = Desktop.getDesktop();
            if (file.exists()) {
                desktop.open(file);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}
