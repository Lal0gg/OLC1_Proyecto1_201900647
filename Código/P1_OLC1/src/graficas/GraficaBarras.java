/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package graficas;

import java.awt.Color;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartFrame;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.renderer.category.BarRenderer;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;

/**
 *
 * @author edujr
 */
public class GraficaBarras {

    public static void GBarras(
                String Titulo,
                String TituloX,
                String TituloY,
                double valores[],
                String ejex []
                
    ) {
        DefaultCategoryDataset dataset = new DefaultCategoryDataset();
        for(int i= 0; i<5;i++){
                    dataset.addValue(valores[i], "Valor", ejex [i]);

        }
               
        JFreeChart charxd = ChartFactory.createBarChart3D(Titulo, TituloX, TituloY, dataset);
        // Personaliza los colores de las barras
        CategoryPlot plot = (CategoryPlot) charxd.getPlot();
        BarRenderer renderer = (BarRenderer) plot.getRenderer();
 
        // Establece el color de las barras individuales
        renderer.setSeriesPaint(0, Color.GREEN);   // Color de la primera serie

        ChartFrame frames = new ChartFrame("Ejemplo", charxd);
        frames.pack();
        frames.setVisible(true);
        
    }
}
