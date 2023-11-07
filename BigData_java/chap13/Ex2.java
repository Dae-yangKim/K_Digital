package chap13;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Ex2 {
    public static void main(String[] args) throws Exception
    {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        
        String usrInput = br.readLine();
        System.out.println(usrInput);        
    }
}
