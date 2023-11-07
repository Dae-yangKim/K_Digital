package chap09;

public class TryCatch3Demo {
    public static void main(String[] args)
    {
        int[] array = {0 , 1 , 2};
        try
        {
            int x = array[3];
        }
        catch(Exception e)
        {
            System.out.println("어이쿠!!!");
        }
        System.out.println("종료.");
    }
}
