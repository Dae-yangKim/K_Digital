package chap02;
import java.util.Scanner;

public class ScannerDemo {
    public static void main(String[] args)
    {
        Scanner scanner = new Scanner(System.in);
        int x , y;
        String str;

        System.out.print("x  :  ");
        x = scanner.nextInt();
        System.out.print("y  :  ");
        y = scanner.nextInt();

        System.out.printf("%d + %d = %d \n" , x , y , x + y);
        
        System.out.print("출력 메시지 입력  :  ");
        str = scanner.next();
        System.out.println("출력 : " + str);
        scanner.close();
    }
}
