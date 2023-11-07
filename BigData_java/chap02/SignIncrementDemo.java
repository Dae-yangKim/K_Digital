package chap02;

public class SignIncrementDemo {
    public static void main(String[] args)
    {
        int x = 1;
        int y = 0;

        y = ++x + x++;
        System.out.printf("x = %d , y = %d\n" , x , y);

        x = 1;
        y = 0;

        y = ++x + ++x;
        System.out.printf("x = %d , y = %d\n" , x , y);
    }
}
