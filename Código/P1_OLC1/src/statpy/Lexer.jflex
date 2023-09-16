// ------------  Paquete e importaciones ------------
package statpy; 

import java_cup.runtime.*;
import clases.Erroor;
import clases.Token;
import func.Funcion;
import static func.Funcion.TokenList;
import static func.Funcion.ErrorList;

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
erchar =\'[a-zA-ZñÑ]\'


//    [/][*][^*]*[*]+([^/*][^*]*[*]+)*[/]     
//    /\\*[^*]*\\*+(?:[^/*][^*]*\\*+)*/
//    /\\*\\s*([^*]|(\\*+[^*/]))*\\*+\\s*\\*/
//    \/\*[\s\S]*?\*\/

%%
// ------------  Reglas Lexicas -------------------
// --> ER = 6
{entero}                {Token NuevoToken = new Token("TkENTERO",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkENTERO> Tk: " + yytext());return new Symbol(sym.TkENTERO, yycolumn, yyline, yytext()); }
{decimal}               {Token NuevoToken = new Token("TkDECIMAL",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkDECIMAL> Tk: " + yytext());return new Symbol(sym.TkDECIMAL, yycolumn, yyline, yytext());}
{comentariomultilinea}  {Token NuevoToken = new Token("TkCOMENTmULTI",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkCOMENTmULTI> Tk: " + yytext());return new Symbol(sym.TkCOMENTmULTI, yycolumn, yyline, yytext()); }
{comentariolinea}       {Token NuevoToken = new Token("TkCOMENTnORMAL",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkCOMENTnORMAL> Tk: " + yytext());return new Symbol(sym.TkCOMENTnORMAL, yycolumn, yyline, yytext());}
{cadena}                {Token NuevoToken = new Token("TkCADENA",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkCADENA> Tk: " + yytext());return new Symbol(sym.TkCADENA, yycolumn, yyline, yytext());}
{erchar}                {Token NuevoToken = new Token("TkErChar",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkErChar> Tk: " + yytext());return new Symbol(sym.TkErChar, yycolumn, yyline, yytext());}



// --> Simbolos = 25
";"     {Token NuevoToken = new Token("TkPUNTOYCOMA",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkPUNTOYCOMA> Tk: " + yytext());return new Symbol(sym.TkPUNTOYCOMA, yycolumn, yyline, yytext());}
":"     {Token NuevoToken = new Token("TkDOSPUNTOS",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkDOSPUNTOS> Tk: " + yytext());return new Symbol(sym.TkDOSPUNTOS, yycolumn, yyline, yytext());}
"."     {Token NuevoToken = new Token("TkPUNTO",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkPUNTO> Tk: " + yytext());return new Symbol(sym.TkPUNTO, yycolumn, yyline, yytext());}
","     {Token NuevoToken = new Token("TkCOMA",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkCOMA> Tk: " + yytext());return new Symbol(sym.TkCOMA, yycolumn, yyline, yytext());}
"="     {Token NuevoToken = new Token("TkIGUAL",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkIGUAL> Tk: " + yytext());return new Symbol(sym.TkIGUAL, yycolumn, yyline, yytext());}
"+"     {Token NuevoToken = new Token("TkSUMA",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkSUMA> Tk: " + yytext());return new Symbol(sym.TkSUMA, yycolumn, yyline, yytext());}
"*"     {Token NuevoToken = new Token("TkMULTIPLICACION",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkMULTIPLICACION> Tk: " + yytext());return new Symbol(sym.TkMULTIPLICACION, yycolumn, yyline, yytext());}
"-"     {Token NuevoToken = new Token("TkRESTA",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkRESTA> Tk: " + yytext());return new Symbol(sym.TkRESTA, yycolumn, yyline, yytext());}
"/"     {Token NuevoToken = new Token("TkDIVISION",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkDIVISION> Tk: " + yytext());return new Symbol(sym.TkDIVISION, yycolumn, yyline, yytext());}
"{"     {Token NuevoToken = new Token("TkLLAVEA",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkLLAVEA> Tk: " + yytext());return new Symbol(sym.TkLLAVEA, yycolumn, yyline, yytext());}
"}"     {Token NuevoToken = new Token("TkLLAVEC",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkLLAVEC> Tk: " + yytext());return new Symbol(sym.TkLLAVEC, yycolumn, yyline, yytext()); }
"("     {Token NuevoToken = new Token("TkPARENTESISAbre",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkPARENTESISAbre> Tk: " + yytext());return new Symbol(sym.TkPARENTESISAbre, yycolumn, yyline, yytext());}
")"     {Token NuevoToken = new Token("TkPARENTESISCierra",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkPARENTESISCierra> Tk: " + yytext());return new Symbol(sym.TkPARENTESISCierra, yycolumn, yyline, yytext());}
"["     {Token NuevoToken = new Token("TkCORCHETEAbre",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkCORCHETEAbre> Tk: " + yytext());return new Symbol(sym.TkCORCHETEAbre, yycolumn, yyline, yytext());}
"]"     {Token NuevoToken = new Token("TkCORCHETECierra",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkCORCHETECierra> Tk: " + yytext());return new Symbol(sym.TkCORCHETECierra, yycolumn, yyline, yytext());}
">"     {Token NuevoToken = new Token("TkMAYORQUE",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);  System.out.println("Se acepto el Token  <TkMAYORQUE> Tk: " + yytext());return new Symbol(sym.TkMAYORQUE, yycolumn, yyline, yytext());}
"<"     {Token NuevoToken = new Token("TkMENORQUE",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkMENORQUE> Tk: " + yytext());return new Symbol(sym.TkMENORQUE, yycolumn, yyline, yytext()); }
">="    {Token NuevoToken = new Token("TkMAYORIGUAL",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkMAYORIGUAL> Tk: " + yytext());return new Symbol(sym.TkMAYORIGUAL, yycolumn, yyline, yytext());}
"<="    {Token NuevoToken = new Token("TkMENORIGUAL",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkMENORIGUAL> Tk: " + yytext());return new Symbol(sym.TkMENORIGUAL, yycolumn, yyline, yytext());}
"=="    {Token NuevoToken = new Token("TkIGUALIGUAL",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkIGUALIGUAL> Tk: " + yytext());return new Symbol(sym.TkIGUALIGUAL, yycolumn, yyline, yytext());}
"&&"    {Token NuevoToken = new Token("TkAND",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkAND> Tk: " + yytext());return new Symbol(sym.TkAND, yycolumn, yyline, yytext());}
"||"    {Token NuevoToken = new Token("TkOR",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkOR> Tk: " + yytext());return new Symbol(sym.TkOR, yycolumn, yyline, yytext());}
"!"     {Token NuevoToken = new Token("TkNOT",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkNOT> Tk: " + yytext());return new Symbol(sym.TkNOT, yycolumn, yyline, yytext());}
"++"    {Token NuevoToken = new Token("TkIncremento",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkIncremento> Tk: " + yytext());return new Symbol(sym.TkIncremento, yycolumn, yyline, yytext());}
"$"     {Token NuevoToken = new Token("TkSignoDolar",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkSignoDolar> Tk: " + yytext());return new Symbol(sym.TkSignoDolar, yycolumn, yyline, yytext());}



// --> Palabras Reservadas = 21 
"int"                   {Token NuevoToken = new Token("TkINT_R",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkINT_R> Tk: "  + yytext());return new Symbol(sym.TkINT_R, yycolumn, yyline, yytext()); }
"double"                {Token NuevoToken = new Token("TkINT_R",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkINT_R> Tk: " + yytext());return new Symbol(sym.TkINT_R, yycolumn, yyline, yytext());}
"char"                  {Token NuevoToken = new Token("TkCHAR_R",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkCHAR_R> Tk: "  + yytext());return new Symbol(sym.TkCHAR_R, yycolumn, yyline, yytext());}
"bool"                  {Token NuevoToken = new Token("TkBOOL_R",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkBOOL_R> Tk: "  +yytext());return new Symbol(sym.TkBOOL_R, yycolumn, yyline, yytext());}
"string"                {Token NuevoToken = new Token("TkSTRING_R",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkSTRING_R> Tk: "  + yytext());return new Symbol(sym.TkSTRING_R, yycolumn, yyline, yytext());}
"void"                  {Token NuevoToken = new Token("TkVOID_R",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkVOID_R> Tk: "  + yytext());return new Symbol(sym.TkVOID_R, yycolumn, yyline, yytext());}
"main"                  {Token NuevoToken = new Token("TkMAIN_R",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkMAIN_R> Tk: "  + yytext());return new Symbol(sym.TkMAIN_R, yycolumn, yyline, yytext());}
"if"                    {Token NuevoToken = new Token("TkIF_R",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkIF_R> Tk: "  + yytext());return new Symbol(sym.TkIF_R, yycolumn, yyline, yytext());}
"Console"               {Token NuevoToken = new Token("TkCONSOLE_R",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkCONSOLE_R> Tk: " + yytext());return new Symbol(sym.TkCONSOLE_R, yycolumn, yyline, yytext());}
"Write"                 {Token NuevoToken = new Token("TkWRITE_R",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkWRITE_R> Tk: " + yytext());return new Symbol(sym.TkWRITE_R, yycolumn, yyline, yytext());}
"else"                  {Token NuevoToken = new Token("TkELSE_R",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkELSE_R> Tk: " + yytext());return new Symbol(sym.TkELSE_R, yycolumn, yyline, yytext());}
"case"                  {Token NuevoToken = new Token("TkCASE_R",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkCASE_R> Tk: "  + yytext());return new Symbol(sym.TkCASE_R, yycolumn, yyline, yytext());}
"brake"                 {Token NuevoToken = new Token("TkBRAKE_R",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkBRAKE_R> Tk: "  + yytext());return new Symbol(sym.TkBRAKE_R, yycolumn, yyline, yytext());}
"default"               {Token NuevoToken = new Token("TkDEFAULT_R",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkDEFAULT_R> Tk: " + yytext());return new Symbol(sym.TkDEFAULT_R, yycolumn, yyline, yytext());}
"for"                   {Token NuevoToken = new Token("TkFOR_R",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkFOR_R> Tk: "  + yytext());return new Symbol(sym.TkFOR_R, yycolumn, yyline, yytext());}
"while"                 {Token NuevoToken = new Token("TkWHILE_R",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkWHILE_R> Tk: "  + yytext());return new Symbol(sym.TkWHILE_R, yycolumn, yyline, yytext());}
"do"                    {Token NuevoToken = new Token("TkDO_R",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkDO_R> Tk: " + yytext());return new Symbol(sym.TkDO_R, yycolumn, yyline, yytext());}
"DefinirGlobales"       {Token NuevoToken = new Token("TkDEFINIR_GLOBALES_R",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkDEFINIR_GLOBALES_R> Tk: " + yytext());return new Symbol(sym.TkDEFINIR_GLOBALES_R, yycolumn, yyline, yytext());}
"GraficaBarras"         {Token NuevoToken = new Token("TkGRAFICA_BARRAS_R",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkGRAFICA_BARRAS_R> Tk: "  + yytext());return new Symbol(sym.TkGRAFICA_BARRAS_R, yycolumn, yyline, yytext());}
"GraficaPie"            {Token NuevoToken = new Token("TkGRAFICA_PIE_R",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkGRAFICA_PIE_R> Tk: "  + yytext());return new Symbol(sym.TkGRAFICA_PIE_R, yycolumn, yyline, yytext());}
"NewValor"              {Token NuevoToken = new Token("TkNewValor",yytext(),yyline,yycolumn);Funcion.TokenList.add(NuevoToken);System.out.println("Se acepto el Token  <TkNewValor> Tk: "  + yytext());return new Symbol(sym.TkNewValor, yycolumn, yyline, yytext());}




comentario {}

//------> Ingorados 
[ \t\r\n\f]     {/* Espacios en blanco se ignoran */}

//------> Errores Léxicos 
.           	{Erroor errorsito = new Erroor("Lexico", yytext() ,"No es válido en este lenguaje", yyline, yycolumn);Funcion.ErrorList.add(errorsito);System.out.println("Error Lexico: " + yytext() + " | Fila:" + yyline + " | Columna: " + yycolumn); }
