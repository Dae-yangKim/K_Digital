package chap08;
import java.text.MessageFormat;

public class Ex7 {
    public static void main(String[] args)
    {
        Object[][] data = {{"세종대왕" , 1 , "조선"} , {"오바마" , 2 , "미국"} ,
                                                    {"징기스칸" , 3 , "몽고"}};

        for(int i = 0 ; i < data.length ; i++)
        {
            String s = MessageFormat.format("이름 : {0}            번호 : {1}           국적 : {2}" , data[i][0] , data[i][1] , data[i][2]);
            System.out.println(s);
        }
    }
}
