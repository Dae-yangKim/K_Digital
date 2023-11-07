package chap09;

class Pair<T>{
    private T first;
    private T second;

    public Pair(T first , T second)
    {
        this.first = first;
        this.second = second;
    }
    public T first(){return this.first;}
    public T second(){return this.second;}
}

public class Ex7 {
    public static void main(String[] args)
    {
        Pair<Integer> p1 = new Pair<>(10 , 20);
        Pair<Double> p2 = new Pair<>(10.0 , 20.0);

        System.out.println(p1.first());
        System.out.println(p2.second());
    }
}
