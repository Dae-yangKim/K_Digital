package chap08;

class Dice{
    public Dice(){}
    public int roll()
    {
        return (int)(Math.random() * 6 + 1);
    }
}

public class Ex4 {
    public static void main(String[] args)
    {
        System.out.println(new Dice().roll());
    }
}
