package chap04;

class Circle{
    private double radius;
    
    double findArea()
    {
        return 3.14 * radius * radius;
    }
    void show(double x , double y)
    {
        System.out.printf("반지름 = %.1f , 넓이 = %.1f\n" , x , y);
    }
    // 접근자와 설정자 (getters and setters)
    double getRadius(){return this.radius;}
    void setRadius(double radius){this.radius = radius;}
}

public class CircleDemo{
    public static void main(String[] args)
    {
        Circle myCircle = new Circle();
        myCircle.setRadius(10.0);

        myCircle.show(myCircle.getRadius() , myCircle.findArea());
    }
}
