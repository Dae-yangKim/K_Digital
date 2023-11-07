package chap13;

import java.io.OutputStream;

public class Ex5 {
    public static void main(String[] args) throws Exception
    {
        OutputStream os = System.out;

        for(byte b = 48 ; b < 58 ; b++)
            os.write(b);
        
        for(byte b = 65 ; b < 91 ; b++)
            os.write(b);
        
        os.close();
    }
}
