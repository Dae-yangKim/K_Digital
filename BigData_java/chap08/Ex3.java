package chap08;

import java.util.Calendar;
import java.util.Locale;
import java.util.*;
import java.text.*;

public class Ex3 {
    public static void main(String[] args)
    {
        String[] weekName = {"일" , "월" , "화" , "수" , "목" , "금" , "토"};
        String[] noonName = {"오전" , "오후"};
        Calendar c = Calendar.getInstance();

        int year = c.get(Calendar.YEAR);
        int month = c.get(Calendar.MONTH) + 1;
        int day = c.get(Calendar.DATE);

        String week = weekName[4];
        String noon = noonName[1];

        Date d = new Date();
        SimpleDateFormat sdf1 = new SimpleDateFormat("HH");
        SimpleDateFormat sdf2 = new SimpleDateFormat("mm");
        SimpleDateFormat sdf3 = new SimpleDateFormat("ss");

        System.out.println(year + "년" + month + "월" + day + "일");
        System.out.println(week + "요일 " + noon);
        System.out.print(sdf1.format(d) + "시 " + sdf2.format(d) + "분 " + sdf3.format(d) + "초");
    }
}
