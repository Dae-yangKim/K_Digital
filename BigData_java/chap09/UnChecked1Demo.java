package chap09;
import java.util.StringTokenizer;

public class UnChecked1Demo {
    public static void main(String[] args)
    {
        String s = "Time is money";
        StringTokenizer st = new StringTokenizer(s);
        try
        {
                while(st.hasMoreTokens()){
                    System.out.print(st.nextToken() + "+");
                }
                System.out.println(st.nextToken());
        }
        catch(Exception e)
        {}
    }
}
