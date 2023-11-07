package chap08;
import java.util.*;
import java.text.*;

public class Ex6 {
    public static void main(String[] args)
    {
        Calendar c = Calendar.getInstance();
        
        Date d = new Date();
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy.mm.dd '오후' hh:mm:ss", Locale.KOREA);
        System.out.println(sdf1.format(d));
        SimpleDateFormat sdf2 = new SimpleDateFormat("'오늘은' M'월의 '", Locale.KOREA);
        System.out.println(sdf2.format(d) + c.get(Calendar.DAY_OF_MONTH) + "번째 날");
        SimpleDateFormat sdf3 = new SimpleDateFormat("'오늘은 'yyyy'년의 '", Locale.KOREA);
        System.out.println(sdf3.format(d) + c.get(Calendar.DAY_OF_YEAR) + "번째 날");
    }
}
