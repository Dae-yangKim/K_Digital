package chap05;

class Circle{
    private double radius;

    public Circle(double radius){this.radius = radius;}
    public void setRadius(double radius)
    {
        this.radius = radius;
    }
    public double getRadius()
    {   
        return this.radius;
    }
}

public class ObjectArgumentDemo {
    public static void main(String[] args)
    {
        Circle c1 = new Circle(10.0);
        Circle c2 = new Circle(10.0);

        zero(c1);
        System.out.println("원(c1)의 반지름 : " + c1.getRadius());

        zero(c2.getRadius());
        System.out.println("원(c2)의 반지름 : " + c2.getRadius());
    }

    public static void zero(Circle c)
    {
        c.setRadius(0.0);
    }

    public static void zero(double r)
    {
        r = 0.0;
    }
}
