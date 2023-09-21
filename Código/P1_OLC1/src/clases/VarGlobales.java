/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clases;

/**
 *
 * @author edujr
 */
public class VarGlobales {

    private String tipodato;
    private String nombrejson;
    private String identificadorr;
    private String valor;

    public VarGlobales(String tipodato, String nombrejson, String identificadorr, String valor) {
        this.tipodato = tipodato;
        this.nombrejson = nombrejson;
        this.identificadorr = identificadorr;
        this.valor = valor;
    }

    /**
     * @return the tipodato
     */
    public String getTipodato() {
        return tipodato;
    }

    /**
     * @param tipodato the tipodato to set
     */
    public void setTipodato(String tipodato) {
        this.tipodato = tipodato;
    }

    /**
     * @return the nombrejson
     */
    public String getNombrejson() {
        return nombrejson;
    }

    /**
     * @param nombrejson the nombrejson to set
     */
    public void setNombrejson(String nombrejson) {
        this.nombrejson = nombrejson;
    }

    /**
     * @return the identificadorr
     */
    public String getIdentificadorr() {
        return identificadorr;
    }

    /**
     * @param identificadorr the identificadorr to set
     */
    public void setIdentificadorr(String identificadorr) {
        this.identificadorr = identificadorr;
    }

    /**
     * @return the valor
     */
    public String getValor() {
        return valor;
    }

    /**
     * @param valor the valor to set
     */
    public void setValor(String valor) {
        this.valor = valor;
    }

}
