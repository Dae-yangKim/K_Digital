package chap14;

public class Thread3Demo {
    //람다식을 이용한 스레드 구현

    public static void main(String[] args)
    {
        Runnable tasks = () ->
        {
            for(int i = 0 ; i < 5 ; i++)
            {
                System.out.print("호우! ");
                try
                {
                    Thread.sleep(1000);
                }
                catch(InterruptedException e)
                {}
            }
        };

        new Thread(tasks).start();
        
    }
}
