package chap06;

class Box{
    public Box(){
        System.out.println("Box 생성자");
    }
}
class ColorBox extends Box{
    public ColorBox(){
        System.out.println("ColorBox 생성자");
    }
}
public class BoxDemo {
    public static void main(String[] args)
    {
        ColorBox cBox = new ColorBox();
        /*먼저 ColorBox객체를 만들게 되면 ColorBox의 생성자가 실행되기 전에
         * 부모 클래스인 Box가 먼저 실행이 되고 그 후에 ColorBox가 실행이 되기 때문에
         * Box 생성자 , ColorBox 생성자 이렇게 결과가 출력이 된다.
         */
    }
}
