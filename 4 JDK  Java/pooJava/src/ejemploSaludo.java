public class ejemploSaludo {
    public static void main(String[] args) {
        Saludo objSaludo;//Declara el objeto
        objSaludo = new Saludo();//Crea el objeto con new
        objSaludo.saludar();//llama al metodo

        Saludo objSaludo0 = new Saludo();

        System.out.println(objSaludo.saludar0());
        System.out.println("Este es otro objeto: ->" + objSaludo0.saludar0());
    }
}
