package chap09;

public class GenericClass2Demo {
    public static void main(String[] args)
    {
        Cup<Beer> c = new Cup<Beer>();
        Cup<Boricha> bori = new Cup<Boricha>();

        c.setBeverage(new Beer());
        Beer b1 = c.getBeverage();
    
        bori.setBeverage(new Boricha());
        Boricha b2 = bori.getBeverage();
    }
}
