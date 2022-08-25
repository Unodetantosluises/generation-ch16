package miEjemploJava;

public class ejemploPersona {
    Persona p = new Persona();
       p.setNombre("Dora");
       p.setEdad(32);
       p.setNss(14689);
        System.out.println("el valor de la variable de instancia p.nombre -> "+p.getNombre());
        System.out.println("el valor de la variable de instancia p.edad -> "+p.getEdad());
        System.out.println("el valor de la variable de instancia p.nss -> "+p.getNss());

}
