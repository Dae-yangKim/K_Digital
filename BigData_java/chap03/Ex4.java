package chap03;
import java.util.Scanner;

public class Ex4 {
    public static void main(String[] args)
    {
        Scanner scanner = new Scanner(System.in);
        
        int year = scanner.nextInt();
        
        if(year % 4 == 0 && year % 100 != 0 || year % 400 == 0)
            System.out.println("윤년이다.");
        else
            System.out.println("평년이다.");
        
        scanner.close();
    }
}
