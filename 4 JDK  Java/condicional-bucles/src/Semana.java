import java.util.Scanner;

public class Semana {
    public static void main(String[] args) {

        Scanner escanner = new Scanner(System.in);
        System.out.println("escribe un numero: ");
        byte diaSemana = escanner.nextByte();

        switch (diaSemana) {
            case 1:
                System.out.println("Se escribio un uno");
                break;
            case 2:
                System.out.println("Se escribuio un dos");
                break;
            case 3:
                System.out.println("Se escribio un tres");

            default:
                System.out.println("Adios");
        }
    }
}
