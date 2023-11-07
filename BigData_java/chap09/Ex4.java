package chap09;

import java.util.Calendar;

class MyDate{
    int year;
    int month;
    int day;

    public MyDate()
    {
        Calendar c = Calendar.getInstance();

        this.year = c.get(Calendar.YEAR);
        this.month = c.get(Calendar.MONTH) + 1;
        this.day = c.get(Calendar.DATE);
    }
}

public class Ex4{
    public static void main(String[] args)
    {
        try{
            MyDate d = null;
        
            System.out.printf("%d년 %d월 %d일\n" , d.year , d.month , d.day);
        }
        catch(NullPointerException e)
        {
            MyDate d = new MyDate();
           
            System.out.printf("%d년 %d월 %d일\n" , d.year , d.month , d.day);
        }
    }
}