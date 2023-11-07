package chap08;

public class StringBuilderDemo {
    public static void main(String[] args)
    {
        String s = new String("hi");
        System.out.println(s.hashCode());
        s = s + "!";
        System.out.println(s.hashCode());

        StringBuilder sb = new StringBuilder("hi"); // 이 경우 새롭게 만드는 게 아니라 같은 문자열에 추가만 하기 때문에  StringBuilder를 사용하는 것이 더 좋다. (메모리적으로)
        System.out.println(sb.hashCode());
        sb = sb.append("!");
        System.out.println(sb.hashCode());

        System.out.println(sb.replace(0 , 2 , "Good bye").insert(0 , "Java, "));
    }
}
