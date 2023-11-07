package chap07;

public class ControllableDemo {
    public static void main(String[] args)
    {
        TV tv = new TV();
        Computer pc = new Computer();
        tv.turnOn();
        tv.turnOff();
        tv.repair();
        pc.turnOn();
        pc.turnOff();
        pc.repair();
        Controllable.reset();
    }
}
