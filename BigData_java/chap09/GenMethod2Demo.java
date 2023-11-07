package chap09;

public class GenMethod2Demo {
    static class Utils{
        public static <T extends Number> void showArray(T[] a) // 상속받은 Number 클래스의 타입으로만 제한한다.
        {
            for(T t : a)
                System.out.printf("%s " , t);
            System.out.println();
        }
    }

    public static void main(String[] args)
    {
        Integer[] ia = {1 , 2 , 3 , 4 , 5};
        Double[] da = {1.0 , 2.0 , 3.0 , 4.0 , 5.0};
        Character[] ca = {'H' , 'E' , 'L' , 'L' , 'O'};

        Utils.showArray(ia);
        Utils.showArray(da);
    }
}
