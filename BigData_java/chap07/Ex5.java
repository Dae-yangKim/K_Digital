package chap07;

abstract class Controller{
    boolean power;
    void show(){};
    abstract String getName();
}

class TV extends Controller{
    public TV(boolean power)
    {
        super.power = power;
    }
    @Override
    public void show()
    {
        if(power)
            System.out.println(this.getName() + "가 켜졌습니다.");
        else
            System.out.println(this.getName() + "가 꺼졌습니다.");
    }
    public String getName(){return "TV";}
}

class Radio extends Controller{
    public Radio(boolean power)
    {
        super.power = power;
    }
    @Override
    public void show()
    {
        if(power)
            System.out.println(this.getName() + "가 켜졌습니다.");
        else
            System.out.println(this.getName() + "가 꺼졌습니다.");
    }
    public String getName(){return "라디오";}
}

public class Ex5 {
    public static void main(String[] args)
    {
        Controller[] c = {new TV(false) , new Radio(true)};

        for(Controller controller : c)
            controller.show();
    }    
}
