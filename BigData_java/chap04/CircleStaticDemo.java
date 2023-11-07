package chap04;

class Circle{
    double radius;
    static int numOfCircles = 0;
    int numCircles = 0;
    
    public Circle(double radius)
    {
        this.radius = radius;
        numOfCircles++;
        numCircles++;
    }
}

public class CircleStaticDemo {
    public static void main(String[] args)
    {
        Circle myCircle = new Circle(100.0);
        Circle yourCircle = new Circle(50.0);

        System.out.println("원의 개수 : " + Circle.numOfCircles);
        System.out.println("원의 개수 : " + yourCircle.numCircles);
    }
}
