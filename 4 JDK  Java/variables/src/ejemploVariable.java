public class ejemploVariable {
   public static void main(String[] args){
       String saludo = "Hola, esto es un ejemplo de variables";
       String nombre = "Luis";
       System.out.println(saludo + ", " + nombre);
       char espacio = '\u0040';
       char caracter = 'a';
       System.out.println("espacio = " + espacio);
       System.out.println("char corresponde en byte: " + Character.BYTES);
       System.out.println("char corresponde en bit: " + Character.SIZE);
       System.out.println("char valor Maximo: " + Character.MAX_VALUE);
       System.out.println("char valor Minimo: " + Character.MIN_VALUE);

       int numeroEntero = 2;
       System.out.println("Numero Entero = " + numeroEntero);
       System.out.println("int corresponde en byte: " + Integer.BYTES);
       System.out.println("int corresponde en bit: " + Integer.SIZE);
       System.out.println("int valor Maximo: " + Integer.MAX_VALUE);
       System.out.println("int valor Minimo: " + Integer.MIN_VALUE);
       
       float numeroFloat = 1;
       System.out.println("numeroFloat = " + numeroFloat);
       System.out.println("float corresponde en byte: " + Float.BYTES);
       System.out.println("float corresponde en bit: " + Float.SIZE);
       System.out.println("float valor Maximo: " +  Float.MAX_VALUE);
       System.out.println("float valor Minimo: " + Float.MIN_VALUE);

       double numeroDouble = 3.444567E39;
       System.out.println("numeroDouble = " + numeroDouble);
       System.out.println("double corresponde en byte: " + Double.BYTES);
       System.out.println("double corresponde en bit: " + Double.SIZE);
       System.out.println("double valor Maximo: " + Double.MAX_VALUE);
       System.out.println("double valor Minimo: " + Double.MIN_VALUE);

       Boolean variableBoolena = (3-2 == 4);
       System.out.println("variableBoolena = " + variableBoolena);

       long variableLong = 1L;
       System.out.println("variableLong = " + variableLong);
       System.out.println("long corresponde en byte: " + Long.BYTES);
       System.out.println("long corresponde en bit: " + Long.SIZE);
       System.out.println("long valor Maximo: " + Long.MAX_VALUE);
       System.out.println("long valor Minimo: " + Long.MIN_VALUE);

       Short variableShort = 1;
       System.out.println("variableShort = " + variableShort);
       System.out.println("short corresponde en byte: " + Short.BYTES);
       System.out.println("short corresponde en bit: " + Short.SIZE);
       System.out.println("short valor Maximo: " + Short.MAX_VALUE);
       System.out.println("short valor Minimo: " + Short.MIN_VALUE);

       //var miVar = '2';
       //System.out.println("miVar = " + miVar);
   }
}
