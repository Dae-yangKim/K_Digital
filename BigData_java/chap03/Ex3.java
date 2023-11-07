package chap03;
import java.util.Scanner;

public class Ex3 {
    public static void main(String[] args)
    {
        Scanner scanner = new Scanner(System.in);

        int n = scanner.nextInt();
        int baguni = (int)(n / 10);
        
        if(n % 10 > 0)
            baguni++;
        
        System.out.println("필요한 바구니 개수 : " + baguni + "개.");
        scanner.close();
    }
}
