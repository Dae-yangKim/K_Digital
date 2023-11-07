package chap13;

import java.io.*;

public class Ex3 {
    public static void main(String[] args)
    {
        double[] arr = {1.0 , 2.0 , 3.0 , 4.0 , 5.0};

        try(DataInputStream dis = new DataInputStream(new FileInputStream("C:\\Test\\double.txt"));
            DataOutputStream dos = new DataOutputStream(new FileOutputStream("C:\\Test\\double.txt"));
        )
        {
            for(int i = 0 ; i < arr.length ; i++)
                dos.writeDouble(arr[i]);
            
            dos.flush();
            for(int i = 0 ; i < arr.length ; i++)
                System.out.println(dis.readDouble());
        }
        catch(IOException e)
        {}
    }
}
