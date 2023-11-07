package chap04;

class Person{
    String name;
    int age;

    public Person setName(String name)
    {
        this.name = name;
        return this;
    }

    public Person setAge(int age)
    {
        this.age = age;
        return this;
    }

    public void sayHello(){System.out.println("안녕 , 나는 " + name + "이고 " + age + "살이야.");}
}

public class MethodChainDemo {
    public static void main(String[] args)
    {
        Person person = new Person();
        person.setName("민국").setAge(12).sayHello();
        /* method chaining을 사용하기 위해서는 ,
         * setName() 사용 이후의 객체에 setAge()를 사용하고 , 그 후의 객체에 ,
         * sayHello()를 사용해야 하기 때문에 setName() , setAge()의 경우에는 반환값을
         * 해당 class 타입으로 해야한다.
         */
    }
}
