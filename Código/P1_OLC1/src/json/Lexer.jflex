// ------------  Paquete e importaciones ------------
package json; 

import java_cup.runtime.*;
import clases.Erroor;
import clases.Token;
import func.Funcion;
%%	
//-------> Directivas (No tocar)

%public 
%class Lexer
%cup
%char
%column
%line
%unicode
%ignorecase

%{ 
%} 

// ------> Expresiones Regulares 

decimal =([0-9]+\.[0-9]+|[0-9]+)
cadena = [\"][^\"\n]*[\"]
comentariomultilinea =[/][*][^*]*[*]+([^/*][^*]*[*]+)*[/]
comentariolinea =\/\/[^\n]*
%%
// ------------  Reglas Lexicas -------------------
"{"         {Token NuevoToken = new Token("TkJsLLAVEABRE",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkJsLLAVEABRE> Tk: " + yytext());return new Symbol(sym.TkJsLLAVEABRE, yycolumn, yyline, yytext());}
"}"         {Token NuevoToken = new Token("TkJsLLAVECIERRA",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkJsLLAVECIERRA> Tk: " + yytext()); return new Symbol(sym.TkJsLLAVECIERRA, yycolumn, yyline, yytext());}
":"         {Token NuevoToken = new Token("TkJsDOSPUNTOS",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkJsDOSPUNTOS> Tk: " + yytext());return new Symbol(sym.TkJsDOSPUNTOS, yycolumn, yyline, yytext());}
","         {Token NuevoToken = new Token("TkJsCOMA",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkJsCOMA> Tk: " + yytext());return new Symbol(sym.TkJsCOMA, yycolumn, yyline, yytext());}



{decimal}               { Token NuevoToken = new Token("TkJsDECIMAL",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkJsDECIMAL> Tk: " + yytext());return new Symbol(sym.TkJsDECIMAL, yycolumn, yyline, yytext()); }
{cadena}                { Token NuevoToken = new Token("TkJsCADENA",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkJsCADENA> Tk: " + yytext()); return new Symbol(sym.TkJsCADENA, yycolumn, yyline, yytext()); }
{comentariomultilinea}  { Token NuevoToken = new Token("TkJsCOMENTMULTI",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkJsCOMENTMULTI> Tk: " + yytext());return new Symbol(sym.TkJsCOMENTMULTI, yycolumn, yyline, yytext()); }
{comentariolinea}       { Token NuevoToken = new Token("TkJsCOMENTUNALINEA",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkJsCOMENTUNALINEA> Tk: " + yytext());return new Symbol(sym.TkJsCOMENTUNALINEA, yycolumn, yyline, yytext()); }





comentario {}

//------> Ingorados 
[ \t\r\n\f]     {/* Espacios en blanco se ignoran */}

//------> Errores Léxicos 
.           	{ Erroor errorsito = new Erroor("Lexico Json", yytext() ,"No es válido en este lenguaje", yyline, yycolumn);Funcion.ErrorList.add(errorsito); System.out.println("Error Lexico: " + yytext() + " | Fila:" + yyline + " | Columna: " + yycolumn); }


