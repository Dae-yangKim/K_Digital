package chap07;
import chap07.Computer;
import chap07.Controllable;
import chap07.TV;

public class Controllable2Demo {
    public static void main(String[] args)
    {
        Controllable[] controllable = {new TV() , new Computer()};

        for(Controllable c : controllable)
        {
            c.turnOn();
            c.turnOff();
            c.repair();
        }
        Controllable.reset();
    }
}
