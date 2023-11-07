package chap05;
import java.util.Scanner;

public class Ex2 {
    public static void main(String[] args)
    {
        Scanner scan = new Scanner(System.in);
        String sentence = scan.next();
        int a_count = 0;

        for(int i = 0 ; i < sentence.length() ; i++)
            if(sentence.charAt(i) == 'a' | sentence.charAt(i) == 'A')
                a_count++;
        
        System.out.println(a_count);
        scan.close();
    }
}
