import java.util.Scanner;
// Documentacion de Java https://docs.oracle.com/en/java/javase/11/docs/api/java.base/module-summary.html
public class Edad {
    public static void main(String[] args) {
        //Determinar si una persona es mayor de edad.
        System.out.println();
        Scanner escanner = new Scanner(System.in);
        System.out.println("Escribe tu Edad:");
        int edad = escanner.nextInt();
        escanner.close();

        System.out.println(edad);

        //If else
        if (edad >= 18){
            System.out.println("Eres mayor de Edad.");
        }else {
            System.out.println("Eres menro de Edad.");
        }
        // Operador Ternario
        String resultado =  (edad >= 18) ? "Eres mayor de Edad" : "Eres menor de Edad";
        System.out.println(resultado);
    }
}
