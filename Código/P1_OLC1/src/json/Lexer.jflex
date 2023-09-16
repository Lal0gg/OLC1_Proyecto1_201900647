// ------------  Paquete e importaciones ------------
package json; 

import java_cup.runtime.*;

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

entero =[0-9]+ 
decimal =([0-9]+\.[0-9]+|[0-9]+)
cadena = [\"][^\"\n]*[\"]
comentariomultilinea =[/][*][^*]*[*]+([^/*][^*]*[*]+)*[/]
comentariolinea =\/\/[^\n]*
%%
// ------------  Reglas Lexicas -------------------
"{"         {return new Symbol(sym.TkJsLLAVEABRE, yycolumn, yyline, yytext());}
"}"         {return new Symbol(sym.TkJsLLAVECIERRA, yycolumn, yyline, yytext());}
":"         {return new Symbol(sym.TkJsDOSPUNTOS, yycolumn, yyline, yytext());}
","         {return new Symbol(sym.TkJsCOMA, yycolumn, yyline, yytext());}




{decimal}               { return new Symbol(sym.TkJsDECIMAL, yycolumn, yyline, yytext()); }
{cadena}                { return new Symbol(sym.TkJsCADENA, yycolumn, yyline, yytext()); }
{comentariomultilinea}  { return new Symbol(sym.TkJsCOMENTMULTI, yycolumn, yyline, yytext()); }
{comentariolinea}       { return new Symbol(sym.TkJsCOMENTUNALINEA, yycolumn, yyline, yytext()); }





comentario {}

//------> Ingorados 
[ \t\r\n\f]     {/* Espacios en blanco se ignoran */}

//------> Errores Léxicos 
.           	{ System.out.println("Error Lexico: " + yytext() + " | Fila:" + yyline + " | Columna: " + yycolumn); }


