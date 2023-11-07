package chap09;

import java.lang.reflect.Array;
import chap09.EnglishScore;
import chap09.MathScore; 

public class Ex3 {
    static <T extends Comparable> T findBest(T[] a)
    {
        T best = a[0];
        for(int i = 1 ; i < a.length ; i++)
        {
            if(best.compareTo(a[i]) == 0)
                best = a[i];
        }
        return best;
    }

    static <T> T findScore(T[] a , String name)
    {
        T best = a[0];
        for(T t : a)
        {
            best = (T) t.toString().substring(0 , 3);
            if(best.equals(name))
                return best;
        }
        return (T) "일치하는 것이 없습니다.";
    }

    public static void main(String[] args)
    {
        EnglishScore[] ea = {new EnglishScore("김삿갓", 77) , 
                                new EnglishScore("장영실", 88) , new EnglishScore("홍길동", 99)};
        MathScore[] ms = {new MathScore("김삿갓", 80) , new MathScore("장영실", 98) ,
                                            new MathScore("홍길동", 70)};
        
        String name = "null";

        System.out.println("영어 최고 점수 : " + findBest(ea));
        System.out.println("수학 최고 점수 : " + findBest(ms));
        try
        {
            name = args[0];
            System.out.println("영어         점수 : " + findScore(ea, name));
            System.out.println("수학         점수 : " + findScore(ms, name));
        }
        catch(IndexOutOfBoundsException e)
        {
            System.out.println("명령형 인자가 없습니다.");
        }
    }
}
