package chap02;

public class VarDemo {
    // var 타입은 메소드 안에서만 사용이 가능하다.

    public static void main(String[] args)
    {
        int var = 1;
        var x = 1;

        System.out.println(var);
        System.out.println(x);

        // var x = 1 , y = 3 , z = 4;
        // var타입을 사용해서 다수의 변수를 한번에 초기화 할 수는 없다.

        // var str = null;
        // var타입은 null값을 가질 수 없다.

        // var oops;
        // oops = 1;
        // var타입은 변수를 바로 초기화 하지 않으면 타입을 추론할 수 없다.
    }

    // void test(var x){}
    // 변수 x의 타입을 추론할 수 없다.
}
