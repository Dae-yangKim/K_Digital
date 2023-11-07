package chap07;

public class Tree implements Countable{
    String name;

    public Tree(String s)
    {
        this.name = s;
    }
    public void count()
    {
        System.out.println(name + "가 5그루 있다.");
    }
    public void ripen()
    {
        System.out.println(name + "에 열매가 잘 익었다.");
    }
}
