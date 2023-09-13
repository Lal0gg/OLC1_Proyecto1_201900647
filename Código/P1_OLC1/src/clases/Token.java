/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clases;

import java.awt.List;
import java.util.ArrayList;

/**
 *
 * @author edujr
 */
public class Token {
    String lexema, token;
    int line, column;

    public Token(String token, String lexema, int line, int column) {
        this.token = token;
        this.lexema = lexema;
        this.line = line;
        this.column = column;
    }

    
    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getLexema() {
        return lexema;
    }

    public void setLexema(String lexema) {
        this.lexema = lexema;
    }

    public int getLinea() {
        return line;
    }

    public void setLinea(int line) {
        this.line = line;
    }

    public int getColumna() {
        return column;
    }

    public void setColumna(int column) {
        this.column = column;
    }
    
    
}
