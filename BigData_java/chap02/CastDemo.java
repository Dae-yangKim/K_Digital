package chap02;

public class CastDemo {
    public static void main(String[] args)
    {
        int i;
        double d;
        byte b;

        i = 7 / 4; // 1.75
        System.out.println(i);
        d = 7 / 4;
        System.out.println(d);
        d = 7 / (double) 4;
        System.out.println(d);

        // i = 7 / (double) 4;
        // 위의 코드의 경우에는 타입 불일치 에러가 나온다.
        
        i = 300;
        if(i < Byte.MIN_VALUE || i > Byte.MAX_VALUE) // Byte형으로 들어갈 수 있는 가장 큰 값과 가장 작은 값이다.
            System.out.println("byte 타입으로 변환할 수 없습니다.");
        else
            b = (byte) i;
    }
}
