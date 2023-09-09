// ------------  Paquete e importaciones ------------
package statpy; 

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
decimal =-?([0-9]+\.[0-9]+|[0-9]+)
cadena = [\"][^\"\n]+[\"]
comentariomultilinea =\/\*[\s\S]*?\*\/
comentariolinea =\/\/[^\n]*

%%
// ------------  Reglas Lexicas -------------------
// --> ER = 5
{entero}                { System.out.println("Tk: " + yytext());return new Symbol(sym.TkENTERO, yycolumn, yyline, yytext()); }
{decimal}               { System.out.println("Tk: " + yytext());return new Symbol(sym.TkDECIMAL, yycolumn, yyline, yytext()); }
{comentariomultilinea}  { System.out.println("Tk: " + yytext());return new Symbol(sym.TkCOMENTmULTI, yycolumn, yyline, yytext()); }
{comentariolinea}       { System.out.println("Tk: " + yytext());return new Symbol(sym.TkCOMENTnORMAL, yycolumn, yyline, yytext()); }
{cadena}                { System.out.println("Tk: " + yytext());return new Symbol(sym.TkCADENA, yycolumn, yyline, yytext()); }



// --> Simbolos = 21
";"      { System.out.println("Tk: " + yytext());return new Symbol(sym.TkPUNTOYCOMA, yycolumn, yyline, yytext()); }
":"      { System.out.println("Tk: " + yytext());return new Symbol(sym.TkDOSPUNTOS, yycolumn, yyline, yytext()); }
"."      { System.out.println("Tk: " + yytext());return new Symbol(sym.TkPUNTO, yycolumn, yyline, yytext()); }
","      { System.out.println("Tk: " + yytext());return new Symbol(sym.TkCOMA, yycolumn, yyline, yytext()); }
"="      { System.out.println("Tk: " + yytext());return new Symbol(sym.TkIGUAL, yycolumn, yyline, yytext()); }
"+"      { System.out.println("Tk: " + yytext());return new Symbol(sym.TkSUMA, yycolumn, yyline, yytext()); }
"*"      { System.out.println("Tk: " + yytext());return new Symbol(sym.TkMULTIPLICACION, yycolumn, yyline, yytext()); }
"-"      { System.out.println("Tk: " + yytext());return new Symbol(sym.TkRESTA, yycolumn, yyline, yytext()); }
"/"      { System.out.println("Tk: " + yytext());return new Symbol(sym.TkDIVISION, yycolumn, yyline, yytext()); }
"{"      { System.out.println("Tk: " + yytext());return new Symbol(sym.TkLLAVEA, yycolumn, yyline, yytext()); }
"}"      { System.out.println("Tk: " + yytext());return new Symbol(sym.TkLLAVEC, yycolumn, yyline, yytext()); }
"("      { System.out.println("Tk: " + yytext());return new Symbol(sym.TkPARENTESISAbre, yycolumn, yyline, yytext()); }
")"      { System.out.println("Tk: " + yytext());return new Symbol(sym.TkPARENTESISCierra, yycolumn, yyline, yytext()); }
">"      { System.out.println("Tk: " + yytext());return new Symbol(sym.TkMAYORQUE, yycolumn, yyline, yytext()); }
"<"      { System.out.println("Tk: " + yytext());return new Symbol(sym.TkMENORQUE, yycolumn, yyline, yytext()); }
">="     { System.out.println("Tk: " + yytext());return new Symbol(sym.TkMAYORIGUAL, yycolumn, yyline, yytext()); }
"<="     { System.out.println("Tk: " + yytext());return new Symbol(sym.TkMENORIGUAL, yycolumn, yyline, yytext()); }
"=="     { System.out.println("Tk: " + yytext());return new Symbol(sym.TkIGUALIGUAL, yycolumn, yyline, yytext()); }
"&&"     { System.out.println("Tk: " + yytext());return new Symbol(sym.TkAND, yycolumn, yyline, yytext()); }
"||"     { System.out.println("Tk: " + yytext());return new Symbol(sym.TkOR, yycolumn, yyline, yytext()); }
"!"      { System.out.println("Tk: " + yytext());return new Symbol(sym.TkNOT, yycolumn, yyline, yytext()); }



// --> Palabras Reservadas = 20 
"int"                   { System.out.println("Tk: " + yytext());return new Symbol(sym.TkINT_R, yycolumn, yyline, yytext()); }
"double"                { System.out.println("Tk: " + yytext());return new Symbol(sym.TkDOUBLE_R, yycolumn, yyline, yytext()); }
"char"                  { System.out.println("Tk: " + yytext());return new Symbol(sym.TkCHAR_R, yycolumn, yyline, yytext()); }
"bool"                  { System.out.println("Tk: " + yytext());return new Symbol(sym.TkBOOL_R, yycolumn, yyline, yytext()); }
"string"                { System.out.println("Tk: " + yytext());return new Symbol(sym.TkSTRING_R, yycolumn, yyline, yytext()); }
"void"                  { System.out.println("Tk: " + yytext());return new Symbol(sym.TkVOID_R, yycolumn, yyline, yytext()); }
"main"                  { System.out.println("Tk: " + yytext());return new Symbol(sym.TkMAIN_R, yycolumn, yyline, yytext()); }
"if"                    { System.out.println("Tk: " + yytext());return new Symbol(sym.TkIF_R, yycolumn, yyline, yytext()); }
"Console"               { System.out.println("Tk: " + yytext());return new Symbol(sym.TkCONSOLE_R, yycolumn, yyline, yytext()); }
"Write"                 { System.out.println("Tk: " + yytext());return new Symbol(sym.TkWRITE_R, yycolumn, yyline, yytext()); }
"else"                  { System.out.println("Tk: " + yytext());return new Symbol(sym.TkELSE_R, yycolumn, yyline, yytext()); }
"case"                  { System.out.println("Tk: " + yytext());return new Symbol(sym.TkCASE_R, yycolumn, yyline, yytext()); }
"brake"                 { System.out.println("Tk: " + yytext());return new Symbol(sym.TkBRAKE_R, yycolumn, yyline, yytext()); }
"default"               { System.out.println("Tk: " + yytext());return new Symbol(sym.TkDEFAULT_R, yycolumn, yyline, yytext()); }
"for"                   { System.out.println("Tk: " + yytext());return new Symbol(sym.TkFOR_R, yycolumn, yyline, yytext()); }
"while"                 { System.out.println("Tk: " + yytext());return new Symbol(sym.TkWHILE_R, yycolumn, yyline, yytext()); }
"do"                    { System.out.println("Tk: " + yytext());return new Symbol(sym.TkDO_R, yycolumn, yyline, yytext()); }
"DefinirGlobales"       { System.out.println("Tk: " + yytext());return new Symbol(sym.TkDEFINIR_GLOBALES_R, yycolumn, yyline, yytext()); }
"GraficaBarras"         { System.out.println("Tk: " + yytext());return new Symbol(sym.TkGRAFICA_BARRAS_R, yycolumn, yyline, yytext()); }
"GraficaPie"            { System.out.println("Tk: " + yytext());return new Symbol(sym.TkGRAFICA_PIE_R, yycolumn, yyline, yytext()); }
"mostrar"               {System.out.println("Tk: " + yytext());return new Symbol(sym.R_MOSTRAR, yycolumn, yyline, yytext());}





comentario {}

//------> Ingorados 
[ \t\r\n\f]     {/* Espacios en blanco se ignoran */}

//------> Errores Léxicos 
.           	{ System.out.println("Error Lexico: " + yytext() + " | Fila:" + yyline + " | Columna: " + yycolumn); }