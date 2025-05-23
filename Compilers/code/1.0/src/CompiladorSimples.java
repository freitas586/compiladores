/*
  This example comes from a short article series in the Linux 
  Gazette by Richard A. Sevenich and Christopher Lopes, titled
  "Compiler Construction Tools". The article series starts at

  http://www.linuxgazette.com/issue39/sevenich.html

  Small changes and updates to newest JFlex+Cup versions 
  by Gerwin Klein
*/

/*
  Commented By: Christopher Lopes
  File Name: Main.java
  To Create: 
  After the scanner, lcalc.flex, and the parser, ycalc.cup, have been created.
  > javac Main.java
  
  To Run: 
  > java Main test.txt
  where test.txt is an test input file for the calculator.
*/
   
import java.io.*;
import java_cup.runtime.*;
   
public class CompiladorSimples {  
      public static void main(final String[] args) {
        Symbol sym;

        try {
          final SimplesLexer lexer = new SimplesLexer(new FileReader(args[0]));
          for (sym = lexer.next_token(); sym.sym != 0; sym = lexer.next_token()) {

            System.out.println(
                "Token " + sym + ", with value = " + sym.value + "; at line " + sym.left + ", column " + sym.right);

          }
        } catch (final Exception e) {
              e.printStackTrace();
          }
      }
  }