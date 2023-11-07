package chap08;

public class ClassDemo {
    public static void main(String[] args)
    {
        KeyBoard k = new KeyBoard("Logitech");

        Class c = k.getClass();
        System.out.println(c.getName());
        System.out.println(c.getSimpleName());
        System.out.println(c.getTypeName());
        System.out.println(c.getPackage().getName());
    }
}
