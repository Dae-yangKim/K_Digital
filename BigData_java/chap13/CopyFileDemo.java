package chap13;

import java.io.*;

public class CopyFileDemo {
    public static void main(String[] args)
    {
        String input = "D:\\Temp\\dup.txt";
        String output = "D:\\Temp\\dup.txt";
        
        try(FileInputStream fis = new FileInputStream(input);
        FileOutputStream fos = new FileOutputStream(output)){
            int c;

            while((c = fis.read()) != -1)
                fos.write(c);
        }
        catch(IOException e)
        {}
    }
}
