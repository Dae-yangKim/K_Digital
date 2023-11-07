package chap11;

import java.util.*;

public class HashMap2Demo {
    public static void main(String[] args)
    {
        Map<Fruit , Integer> map = new HashMap<>();
        map.put(new Fruit("사과") , 5);
        map.put(new Fruit("사과") , 2);
        map.put(null , 3);
        System.out.println(map.size());
        System.out.println(map);
    }
}
