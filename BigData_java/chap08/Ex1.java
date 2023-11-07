package chap08;

class Circle{
    private int radius;

    public Circle(int radius)
    {
        this.radius = radius;
    }
    public boolean equals(Object obj)
    {
        if(obj instanceof Circle)
        {
            Circle c = (Circle) obj;
            if(this.getRadius() == c.getRadius())
                return true;
        }
        return false;
    }
    public int getRadius()
    {
        return this.radius;
    }
}

public class Ex1{
    public static void main(String[] args)
    {
        Circle c1 = new Circle(3);
        Circle c2 = new Circle(3);

        if(c1.equals(c2))
            System.out.println("c1과 c2는 같다.");
        else
            System.out.println("c1과 c2는 다르다.");
    }
}