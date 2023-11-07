package chap11;

import java.util.*;

class Person{
    String name;
    int age;

    public Person(String name , int age)
    {
        this.name = name;
        this.age = age;
    }
    public String toString(){return String.format("%s : %d" , this.name , this.age);}
    public int hashcode(){return this.name != null ? name.hashCode() : 0;}
    @Override // 구현해야 한다.
    public boolean equals(Object o)
    {
        if(o instanceof Person)
            return (((Person) o).name.equals(name));
        return false;
    }
}

public class Ex2 {
    public static void main(String[] args)
    {
        Set<Person> set = new HashSet<>();
        set.add(new Person("김열공" , 20)); set.add(new Person("최고봉" , 56));
        set.add(new Person("우등생" , 16)); set.add(new Person("나자바" , 35));

        for(Person p : set)
            System.out.println(p.toString());
        System.out.println();
        
        Iterator iter = set.iterator();
        while(iter.hasNext())
            System.out.print(iter.next());
    }
}
