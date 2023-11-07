package chap08;

public class Ex5 {
    public static void main(String[] args)
    {
        show(new String("멘붕"));
        show(new StringBuilder("meltdown"));
        show(new StringBuffer("!@#"));
    }
    public static void show(Object s)
    {
        System.out.println(s);
    }
}
