package chap08;

class Student{
    private String name;

    public Student(String name)
    {
        this.name = name;
    }
}

public class Ex2 {
    public static void main(String[] args)
    {
        System.out.println(new Student("김삿갓"));
        System.out.println(new Student("홍길동"));
    }
}
