package chap09;

class Shape{}

class Rectangle extends Shape{}

class Circle extends Shape{}

public class Ex5 {
    public static void main(String[] args)
    {
        Rectangle r = new Rectangle();
        try
        {
            casting(r);
        }
        catch(ClassCastException e)
        {
            System.out.println("casting 못합니다~.");
        }
    }

    static void casting(Shape s)
    {
        Circle c = (Circle) s;
    }
}
