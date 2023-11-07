package chap08;
import java.util.StringTokenizer;
import java.util.ArrayList;
import java.util.Collections;

public class Ex8 {
    public static void main(String[] args)
    {
        ArrayList<String> arr = new ArrayList<>();
        System.out.print("입력 : Empty vessels make the most sound.\n");
        String s = "Empty vessels make the most sound.";
        StringTokenizer st = new StringTokenizer(s , " ");
        
        System.out.printf("단어 개수 : %d\n" , st.countTokens());
        System.out.print("정렬된 토큰 : ");

        while(st.hasMoreTokens())
            arr.add(st.nextToken());
        
        Collections.sort(arr);
        for(int i = 0 ; i < arr.size() ; i++)
            System.out.print(arr.get(i) + "," + " ");
    }
}
