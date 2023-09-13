/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clases;

/**
 *
 * @author edujr
 */
public class Erroor {

    String type, description, character;
    int line, column;

    public Erroor(String type, String character, String description, int line, int column) {
        this.type = type;
        this.character = character;
        this.description = description;
        this.line = line;
        this.column = column;
    }
    
    // Getters
    public String getType() {
        return type;
    }

    public String getDescription() {
        return description;
    }

    public String getCharacter() {
        return character;
    }

    public int getLine() {
        return line;
    }

    public int getColumn() {
        return column;
    }

    // Setters
    public void setType(String type) {
        this.type = type;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setCharacter(String character) {
        this.character = character;
    }

    public void setLine(int line) {
        this.line = line;
    }

    public void setColumn(int column) {
        this.column = column;
    }

}
