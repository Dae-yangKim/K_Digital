package chap13;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;

public class Ex4 {
    public static void main(String[] args)
    {
        String fileName;
        fileName = new Scanner(System.in).nextLine();
        try
        {
            int num = 1;
            BufferedReader br = new BufferedReader(new FileReader(fileName));
            String line;
            while(true)
            {
                line = br.readLine();
                if(line == null)
                    break;
                System.out.printf("%3d : %s\n" , num++ , line);
            }
            br.close();
        }
        catch(IOException e)
        {}
    }
}
