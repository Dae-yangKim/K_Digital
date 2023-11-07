package chap05;
import java.util.Scanner;

public class Ex1 {
    public static void main(String[] args)
    {
        Scanner scan = new Scanner(System.in);
        String sentence = scan.next();

        int length = sentence.length();

        for(int i = length - 1 ; i >= 0 ; i--)
            System.out.print(sentence.charAt(i));
        
        scan.close();
    }
}
