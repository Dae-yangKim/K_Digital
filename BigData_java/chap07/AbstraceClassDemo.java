package chap07;

public class AbstraceClassDemo {
    public static void main(String[] args)
    {
        Circle c = new Circle(3);
        c.draw();
        System.out.printf("원의 넓이는 %.1f\n" , c.findArea());
    }
}
