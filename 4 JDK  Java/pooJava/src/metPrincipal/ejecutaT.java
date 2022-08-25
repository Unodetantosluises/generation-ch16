package metPrincipal;

import menuP.menuOp;
import miSaludo.Saludo;
import ejemploResumen.animal;
import miEjemploJava.Persona;
import miFecha.fecha;
import java.util.Scanner;

public class ejecutaT {
    public static void main(String[] args) {
        enlaceSys es = new enlaceSys();
        es.enlazar();
        Scanner sc = new Scanner(System.in);
        do {
            menuOp menuOp = new menu();
            menuOp.menu();
            System.out.println("Elija una opcion ->");
            int op;
            switch (op) {
                case 1:
                    Saludo s = new Saludo();
                    sc.saludar();
                    System.out.println(sc.saludar0());
                    break;
                case 2:
                    animal

                    break;
                case 3:
                    fecha = new fecha();
                    break;
                case 4:
                    Persona p = new Persona();

                    break;
                default:
                    System.out.println("Opcion no Valida");
            }while (op <= 4 );
            }
        }
    }
}
