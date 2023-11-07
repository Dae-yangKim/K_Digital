package chap03;

public class Ex2 {
    public static void main(String[] args)
    {

        for(int i = 11 ; 0 <= i ; i--)
        {
            for(int k = 0 ; k < i ; k++)
                System.out.print("*");
            System.out.println();
        }
    }
}
