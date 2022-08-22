public class ejemploString {
   public static void main(String[] args) {
      //Declaracion Literal
      String curso = "Curso en Java";
      System.out.println("curso = " + curso);
      String nombre = "Luis Antonio Diaz Martinez";
      //Declaracion por referencia
      String resultado = new String("Curso en Java");
      System.out.println("Resultado = " + resultado);

      boolean esigual = curso == resultado;
      System.out.println("Es igual = " + esigual);

      //Equals es para objetos, = = es para comparar cadenas de
      esigual = curso.equals(resultado);
      System.out.println("es igual =" + esigual);

      //Concatenacion
      String concat = curso  + " con " + nombre;
      System.out.println("concat = " + concat);
      //Reconctenancion
      String dia = "sesion del dia Jueves.";
      String concat1 = concat.concat(" ".concat(dia));
      System.out.println("concat1 = " + concat1);
   }
}
