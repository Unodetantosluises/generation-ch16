import java.util.*;

public class Diccionario {
    public static void main(String[] args) {
        /*
         *  Crear una clase llamada Diccionario
         *  Crear un programa en Java que realice lo siguiente:
         *  Crear un diccionario Español-Inglés, que contenga al menos 20 palabras (con traducción).
         *  Utilizar un objeto HashMap para almacenar los pares de palabras.
         *  Escoger al azar 5 palabras del mini diccionario.
         *  Pedir al usuario que teclee la palabra en inglés y que se imprima la traducción
         *
         *
         *
         * Extra:
         *  Pedir al usuario que teclee la traducción al inglés de cada una de las palabras y comprobará si son correctas.
         *  Al final debe mostrar por consola cuántas respuestas correctas e incorrectas tiene el usuario.

         * */
        Map<String,String> diccionario = new HashMap<String,String>();
        diccionario.put("Food", "Comida");
        diccionario.put("Music", "Musica");
        diccionario.put("Boot", "Bota");
        diccionario.put("Museum", "Museo");
        diccionario.put("Movie", "Peliculas");
        diccionario.put("Watch", "Reloj");
        diccionario.put("Cake", "Pastel");
        diccionario.put("Sad", "Triste");
        diccionario.put("Cat", "Gato");
        diccionario.put("Dog", "Perro");
        diccionario.put("Number", "Numero");
        diccionario.put("Backpack", "Mochila");
        diccionario.put("Mascot", "Mascota");

        for (HashMap.Entry<String, String> entry : diccionario.entrySet()){
            System.out.printf("Ingles: %s. \n", entry.getKey(),entry.getValue());
        }

        Object[] palabraAleatoria = diccionario.keySet().toArray();
        
        Object key = palabraAleatoria[new Random().nextInt(palabraAleatoria.length)];

        System.out.println("Palabra Aleatoria = " + key);

        Scanner sc = new Scanner(System.in);
        String traduccion = sc.nextLine();
        if (Objects.equals(palabraAleatoria = traduccion)){
            correctas++;
        }else {
            incorrectas++;
        }


    }
}
