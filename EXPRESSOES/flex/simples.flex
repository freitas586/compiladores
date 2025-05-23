  
/* --------------------------Usercode Section------------------------ */
   
import java_cup.runtime.*;
      
%%
   
/* -----------------Options and Declarations Section----------------- */

%class SimplesLexer
%line
%column
%cup
   

%{   
    
    private Symbol symbol(int type) {
        return new Symbol(type, yyline, yycolumn);
    }
    
    private Symbol symbol(int type, Object value) {
        return new Symbol(type, yyline, yycolumn, value);
    }
%}
   
digit           = [0-9]  
LineTerminator = \r|\n|\r\n
WhiteSpace     = {LineTerminator} | [ \t\f]
integer   =   {digit}+

%%
/* ------------------------Lexical Rules Section---------------------- */
<YYINITIAL> {
    ";"                {  return symbol(sym.SEMI);     }
    "+"                {  return symbol(sym.PLUS);     }
    "-"                {  return symbol(sym.MINUS);    }
    "*"                {  return symbol(sym.TIMES);    }
    "div"              {  return symbol(sym.DIVIDE);   }
    "("                {  return symbol(sym.LPAREN);   }
    ")"                {  return symbol(sym.RPAREN);   }
  
    {integer}      { return symbol(sym.INTT,yytext()); }
    {WhiteSpace}   { /* do nothing */}
  }

[^]                    { System.err.println("Error: Caracter Ilegal <"+yytext()+"> na linha: " + yyline); }
