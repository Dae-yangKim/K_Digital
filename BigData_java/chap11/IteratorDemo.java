package chap11;

import java.util.*;

public class IteratorDemo {
    public static void main(String[] args)
    {
        Collection<String> list = Arrays.asList("다람쥐" , "개구리" , "나비");
        
        Iterator<String> iterator = list.iterator();
        while(iterator.hasNext())
            System.out.print(iterator.next() + "-");
        System.out.println();

        while(iterator.hasNext())
            System.out.print(iterator.next() + "+");
        System.out.println();

        iterator = list.iterator(); // 초기화
        while(iterator.hasNext())
            System.out.print(iterator.next() + "=");
    }
}
