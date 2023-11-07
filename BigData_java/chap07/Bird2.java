package chap07;

public class Bird2 implements Countable{
    String name;
    
    public Bird2(String s){
        this.name = s;
    }
    public void count()
    {
        System.out.println(name + "가 2마리 있다.");
    }
    public void fly()
    {
        System.out.println("2마리 " + name + "가 날아간다.");
    }
}
