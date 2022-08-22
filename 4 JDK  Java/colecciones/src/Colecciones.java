import java.util.ArrayList;
import java.util.List;

public class Colecciones {
    public static void main(String[] args){
        //list -- Arraylist
        //los valores se ordenan segun el odden en que los agregemos
        //permiten tener valores duplicados
        //es una coleccion de objetos de un mismo tipo

        List<String> meses = new ArrayList<>();

        // Metodo para agregar elementos al arreglo
        meses.add("Enero");
        meses.add("Febrero");
        meses.add("Marzo");
        meses.add(1, "Abril");
        meses.add("Mayo");
        meses.add("Junio");

        String mes = meses.remove(3);

        System.out.println(meses);
        System.out.println(mes);
        System.out.println(meses.get(0));
        System.out.println(meses.size());

        for(String elemento : meses){
            System.out.println(elemento);
        }

        //List<int> numeros = new ArrayList<int>();

        int num = 10;
        Integer num1 = 10;

        System.out.println(num + 50);
        System.out.println(num1 - 5);
        System.out.println(num1.getClass().getSimpleName());

        List<Integer> numeros = new ArrayList<Integer>();
        numeros.add(2);
        numeros.add(500);
        numeros.add(98);
        numeros.add(25);
    }
}