package chap07;

interface Edible{
    void eat();
}

interface Sweetable{
    void sweet();
}

interface Delicious extends Edible , Sweetable{
    void eat();
    void sweet();
}

public class Ex2 {
    
}
