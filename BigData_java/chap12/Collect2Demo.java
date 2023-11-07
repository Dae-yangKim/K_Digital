package chap12;

import java.util.*;
import java.util.function.Predicate;
import java.util.stream.*;

public class Collect2Demo {
    public static void main(String[] args)
    {
        Stream<Nation> sn = Nation.nations.stream();
        Stream<String> ss = sn
            .map(Nation::getName)
            .limit(3);
        List<String> list = ss
            .collect(Collectors.toList());
        System.out.println(list);

        sn = Nation.nations.stream();
        Set<String> set = sn
            .map(Nation::getName)
            .limit(3)
            .collect(Collectors.toSet());
        System.out.println(set);

        sn = Nation.nations.stream();
        Map<String , Double> map = sn
            .filter(Nation::isIsland)
            .collect(Collectors.toMap(Nation::getName ,
                Nation::getPopulation));
        System.out.println(map);

        Stream<Nation> sn = Nation.nations.stream();
        Set<Nation> hashSet = sn
            .filter(Predicate.not(Nation::isIsland))
            .collect(Collectors.toCollection(HashSet<Nation>::new));
        
        hashSet.forEach(x ->
            Util.print("(" + x.getName() + "," + x.getGdpRank() + ")"));
    }
}
