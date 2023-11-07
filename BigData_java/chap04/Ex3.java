package chap04;

class Member{
    private String name;
    private String id;
    private String password;
    private int age;

    public Member(String name , String id , String password , int age)
    {
        this.name = name;
        this.id = id;
        this.password = password;
        this.age = age;
    }

    public String getName(){return this.name;}
    public String getID(){return this.id;}
    public String getPassWord(){return this.password;}
    public int getAge(){return this.age;}

    public void setName(String name){this.name = name;}
    public void setID(String id){this.id = id;}
    public void setPassWord(String password){this.password = password;}
    public void setAge(int age){this.age = age;}
}

public class Ex3 {
    public static void main(String[] args)
    {
        System.out.println("SUPER HELLO WORLD!!!");
    }
}
