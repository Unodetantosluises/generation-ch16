import java.util.Scanner;

public class ejemplOperadores {
    public static void main(String[] args) {
    /*
    Operadores Aritmeticos
     */
    int i = 5, j = 4;
    int suma = i + j;
    System.out.println("suma: " + suma);
    System.out.println("i + j = " + (i + j));
    System.out.println("i + j = " + i + j);

    int resta = i - j;
        System.out.println("resta = " + resta);
        System.out.println("i - j = " + (i - j));

    int multi = i * j;
        System.out.println("i * j = " + (i * j));

    int div  = i/j;
        System.out.println("div = " + div);
        float div1 = (float)i/(float)j;
        System.out.println("div1 = " + div1);

    int resto = i % j;
        System.out.println("resto = " + resto);
        resto = 8 % 5;
        System.out.println("resto = " + resto);

        Scanner scanner = new Scanner((System.in));
        System.out.println("Cual es tu nombre?");
        String nombre = scanner.next();
        System.out.println("Mi nombre es :" + nombre);
        System.out.println("Cual es tu edad?");
        //int edad = Integer.parseInt(dato);
        String edad = scanner.next();
        System.out.println("Mi edad es:  " + edad);
    /*
    Incremento y Decremento
    Utilizado para incrementar o decrementar el valor en 1
    Hay dos vairables de operador de incremento pre y post
     */

    /*
    Ternario o Condicional
    El operador ternario es una version abreviada de la sentencia if-else
    Tiene tres operadores y de ahi devuleve el ternario: (condicon)?valor1:valor2
    int a => 2 > 3 ? 1 : 2;
     */

    /*
    Operadores Relacioonales
    Se utilizan para comprobar relaciones de igualdad, mayor que, menor que.
    Devuelven un resultado booleano déspues de la comparación, ture si la comporbacion fue
    exitoas y false en caso contrario
    Se usa ampliamente en las sentencias if/else, así como en bucles.
     */

    /*
    Operadores Logicos
    Los operadores lógiocs permiten evaluar expresiones lógicas y trabajan con
    operadores booleanos.
    Realizan las operaciones lógicas de conjuncion(AND), disyuncion(OR) y
    negacción(NOT)
     */
    }
}
