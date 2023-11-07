package chap04;

class Triangle{
    double area;
    double height;
    
    public Triangle(double area , double height)
    {
        this.area = area;
        this.height = height;
    }

    public double findArea(){return this.area * this.height * 0.5;}
    public double getArea(){return this.area;}
    public double getHeight(){return this.height;}
}

public class Ex1 {
    public static void main(String[] args)
    {
        Triangle t = new Triangle(10.0, 5.0);
        System.out.println(t.findArea());
    }
}
