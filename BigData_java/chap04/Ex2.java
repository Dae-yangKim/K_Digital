package chap04;

class Triangle{
    double area;
    double height;
    
    public Triangle(double area , double height)
    {
        this.area = area;
        this.height = height;
    }
    public String isSameArea(Triangle t)
    {
        String result;
        if(this.findArea() == t.findArea())
            result = "일치";
        else
            result = "불일치";
        return result;
    }
    public double findArea(){return this.area * this.height * 0.5;}
    public double getArea(){return this.area;}
    public double getHeight(){return this.height;}
}

public class Ex2 {
    public static void main(String[] args)
    {
        Triangle t1 = new Triangle(10.0, 5.0);
        Triangle t2 = new Triangle(5.0, 1.0);
        Triangle t3 = new Triangle(8.0, 8.0);

        System.out.println(t1.isSameArea(t2));
        System.out.println(t1.isSameArea(t3));        
    }
}
