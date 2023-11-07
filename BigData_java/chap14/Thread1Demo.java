package chap14;

public class Thread1Demo {
    public static void main(String[] args)
    {
        Thread t = new Thread(new MyRunnable());
        t.start();

        for(int i = 0 ; i < 5 ; i++)
        {
            System.out.print("안녕. ");
            try
            {
                Thread.sleep(2000); // 0.5초 기다려라. (1000이 1초이다.)
            }
            catch(InterruptedException e)
            {}
        }
    }
}
class MyRunnable implements Runnable{
        @Override
        public void run()
        {
            for(int i = 0 ; i < 5 ; i++)
            {
                System.out.print("잘가. ");
                try
                {
                    Thread.sleep(2000);
                }
                catch(InterruptedException e)
                {}
            }
        }
    }
