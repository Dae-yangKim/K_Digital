package chap09;

public class GenMethod1Demo {
    static class Utils{
        public static <T> void showArray(T[] a)
        {
            for(T t : a)
                System.out.printf("%s " , t);
            System.out.println();
        }

        public static <T> T getLast(T[] a) // 제네릭 메서드의 경우에는 <타입매개변수> 반환타입 메서드 이름(...){...} 이런 식으로.
        {
            return a[a.length - 1];
        }

    public static void main(String[] args)
    {
        Integer[] ia = {1 , 2 , 3 , 4 , 5};
        Character[] ca = {'H' , 'E' , 'L' , 'L' , 'O'};
            
        Utils.showArray(ia);
        Utils.<Character>showArray(ca); // 호출할 때 구체적인 타입을 명시해도 된다.

        System.out.println(Utils.getLast(ia));
    }
    }
}
