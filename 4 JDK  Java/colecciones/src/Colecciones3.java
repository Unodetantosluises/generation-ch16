import java.util.*;

public class Colecciones3 {
    public static void main(String[] args) {
        //int -> Integer
        //char -> Character
        //float -> Float
        //double -> Double
        System.out.println("ArrayList");
        List<String> comidas = new ArrayList<>();
        comidas.add("Pozole");
        comidas.add("Pambazo");
        comidas.add("Aguachile");
        comidas.add("Enchiladas");
        comidas.add("Chilaquiles");
        comidas.add(2, "Mole");

        System.out.println(comidas);
        //
        List<Integer> numeros = new ArrayList<Integer>(Arrays.asList(1,2,3,4,5,6));
        System.out.println(numeros);

        System.out.println("--------");
        System.out.println("HashSet");

        Set<String> ciudades = new HashSet<String>();
        ciudades.add("CDMX");
        ciudades.add("GDL");
        ciudades.add("MTY");

        System.out.println(ciudades);

        //Otra forma de crear un HashSet
        Set<Boolean> verdad = new HashSet<Boolean>(Arrays.asList(true, false, false, true));
        System.out.println(verdad);

        System.out.println("----------");
        System.out.println("HashMap");
        //nos permite guardar pares de valores
        //llave : valor
        //HashMap<llave, valor>

        Map<Integer, String> alumnos = new HashMap<Integer, String>();
        alumnos.put(1, "Pedro");
        alumnos.put(2, "Sofia");
        alumnos.put(3, "Salma");
        alumnos.put(4, "Ariadme");
        alumnos.put(5, "Miguel");

        System.out.println(alumnos);
        System.out.println(alumnos.size());
        System.out.println(alumnos.values());//lista de valores
        System.out.println(alumnos.keySet());//lsita de las llaves
        System.out.println(alumnos.get(2));

        /*
        Object llaves = alumnos.keySet().toArray()[4];
        System.out.println(alumnos.get(llaves));
        */

        for(int i = 0; i<alumnos.size(); i++) {
            Object llaves = alumnos.keySet().toArray()[i];
            System.out.println(alumnos.get(llaves));
        }
        for (Integer llave : alumnos.keySet()){
            System.out.println(llave + "-" + alumnos.get(llave));
        }
    }
}
