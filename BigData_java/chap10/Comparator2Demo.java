package chap10;

import java.util.*;

public class Comparator2Demo {
    public static void main(String[] args)
    {
        List<Car> list = Car.cars.subList(0 , 3);
        Car[] cars = list.toArray(new Car[4]);

        Comparator<Car> modelComparator
            = Comparator.comparing(Car :: getModel);

        System.out.println(Arrays.toString(cars));
        Comparator<Car> modelComparatorNullsFirst
            = Comparator.nullsFirst(modelComparator);
        Arrays.sort(cars , modelComparatorNullsFirst);
        System.out.println(Arrays.toString(cars));

        list.set(2 , new Car("쏘렌토" , false , 1 , 10001));
        cars = all.toArray(new Car[3]);

        System.out.println(Arrays.toString(cars));
        Comparator<Car> modelNAgeComparator
             = modelComparator.thenComparing(Car :: getAge);
            
        Arrays.sort(cars , modelNAgeComparator);
        System.out.println(Arrays.toString(cars));
    }
}
