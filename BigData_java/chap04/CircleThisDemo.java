package chap04;

class Circle{
    double radius;
    String color;

    public Circle(double radius){this(radius , "빨강");}
    public Circle(double radius , String color)
    {
        this.radius = radius;
        this.color = "노랑";
    }
    public Circle(){this(10.0 , "파랑");}
}

public class CircleThisDemo {
    public static void main(String[] args)
    {
        Circle c = new Circle(20.5);
        System.out.println(c.color);
    }
}
