package chap06;

public class Circle{
    private void secret()
    {
        System.out.println("비밀이다.");
    }
    protected void findRadius()
    {
        System.out.println("반지름이 10.0센티이다.");
    }
    public void findArea()
    {
        System.out.println("넓이는 (pi * radius * radius)이다.");
    }
}