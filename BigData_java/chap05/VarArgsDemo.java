package chap05;

public class VarArgsDemo {
    public static void main(String[] args)
    {
        printSum(1 , 2 , 3 , 4 , 5);
        printSum(10 , 20 , 30);

        System.out.println(String.format("My score is %.1f" , 99.8));
        System.out.println(String.join("," , "one" , "two" , "three"));
    }

    public static void printSum(int... v) // 가변 개수의 데이터 타입을 나타낸다.
    {
        int sum = 0;
        for(int i : v)
            sum += i;
        System.out.println(sum);
    }
}
