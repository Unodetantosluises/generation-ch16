import java.lang.reflect.Array;
import java.util.Map;

public class Arreglos {
    public static void main(String[] args) {
        //Arreglo
        //No se puede mezclar tipos de datos
        int[] numeroAleatorio = {1,2,3,4,5,6};
        String[] valores = {"Hola", "Adios"};

        //Los arreglos tienen un tamaño definido
        char[] caracteres = new char[4];
        caracteres[0] = 'H';
        caracteres[1]= 'o';
        caracteres[2]= 'l';
        caracteres[3]= 'a';

        valores[2] = "Valor Cambiado";

        System.out.println(numeroAleatorio.length);
        System.out.println(valores[2]);
        System.out.println(caracteres);

        //for each
        for(String elemento : valores){
            System.out.println(elemento);
        }

        for (int numero : numeroAleatorio){
            System.out.println(numero);
        }
    }
}
