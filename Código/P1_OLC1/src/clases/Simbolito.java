/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clases;

/**
 *
 * @author edujr
 */
public class Simbolito {

    private String symbolt;
    private String valuet;
    private String typet;

    public Simbolito(String symbolt, String valuet, String typet) {
        this.symbolt = symbolt;
        this.valuet = valuet;
        this.typet = typet;
    }

    /**
     * @return the symbolt
     */
    public String getSymbolt() {
        return symbolt;
    }

    /**
     * @param symbolt the symbolt to set
     */
    public void setSymbolt(String symbolt) {
        this.symbolt = symbolt;
    }

    /**
     * @return the valuet
     */
    public String getValuet() {
        return valuet;
    }

    /**
     * @param valuet the valuet to set
     */
    public void setValuet(String valuet) {
        this.valuet = valuet;
    }

    /**
     * @return the typet
     */
    public String getTypet() {
        return typet;
    }

    /**
     * @param typet the typet to set
     */
    public void setTypet(String typet) {
        this.typet = typet;
    }

    @Override
    public String toString() {
        return "Symbol: " + symbolt + ", Value: " + valuet + ", Type: " + typet;
    }

}
