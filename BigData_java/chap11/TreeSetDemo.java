package chap11;

import java.util.*;

public class TreeSetDemo {
    public static void main(String[] args)
    {
        Set<String> set = Set.of("포도" , "수박" , "사과" , "키위" , "망고");
        HashSet<String> hashset = new HashSet<>(set);
        System.out.println(hashset);
        TreeSet<String> treeset = new TreeSet<>(set);
        System.out.println(treeset);

        System.out.println(treeset.first());
        System.out.println(treeset.last());
        System.out.println(treeset.lower("사과")); // "사과" 보다 앞에 있는 원소 출력.
        System.out.println(treeset.higher("사과")); // "사과" 보다 뒤에 있는 원소 출력.
    }
}
