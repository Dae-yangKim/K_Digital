package chap03;
import java.util.Scanner;

public class Ex1 {
    public static void main(String[] args)
    {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();

        int two = n % 2;
        int three = n % 3;
        int five = n % 5;

        if(two == 0)
        {
            if(three == 0 && three == 0)
                System.out.println("2와 3과 5의 배수");
            else if(three == 0)
                System.out.println("2와 3의 배수");
            else if(five == 0)
                System.out.println("2와 5의 배수");
            else
                System.out.println("2의 배수");
        }
        else if(three == 0)
        {
            if(five == 0)
                System.out.println("3과 5의 배수");
            else
                System.out.println("3의 배수");
        }
        else
            System.out.println("5의 배수");
        
        scanner.close();
    }
}
