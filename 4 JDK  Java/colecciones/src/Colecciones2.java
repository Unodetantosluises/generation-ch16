import java.util.HashSet;
import java.util.Set;

public class Colecciones2 {
    public static void main(String[] args) {
        Set<String> miSet = new HashSet<>();

        miSet.add("Juan");
        miSet.add("Carlos");
        miSet.add("Felipe");
        miSet.add("Pedro");
        miSet.add("Felipe");
        miSet.add("Felipe");
        miSet.add("Felipe");
        miSet.add("Felipe");

        boolean persona = miSet.remove("Felipe");

        System.out.println(miSet);
        System.out.println(miSet.size());
        System.out.println(miSet.contains("Juan"));

        for(String nombre : miSet){
            System.out.println(nombre);
        }
    }
}
