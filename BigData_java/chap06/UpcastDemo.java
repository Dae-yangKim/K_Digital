package chap06;

public class UpcastDemo {
    public static void main(String[] args)
    {
        // Upcasting
        Person p;
        Student s = new Student();

        p = s; // 자동으로 타입 변환이 일어나며 , p = (Person)s 와 동일

        p.whoami();
    }
}
