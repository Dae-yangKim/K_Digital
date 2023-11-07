package chap18;
import java.sql.*;

public class DB1Demo{
    public static Connection makeConnection()
    {
        String url = 
            "jdbc:mysql://localhost/shopdb?serverTimezone=Asia/Seoul";
        Connection con = null;
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");

            System.out.println("데이터베이스 연결중...");
            con = DriverManager.getConnection(url , "root" , "eodid9523");
            System.out.println("데이터베이스 연결 성공!");
        }
        catch(ClassNotFoundException e)
        {
            System.out.println("JDBC드라이버를 찾지 못했습니다.");
        }
        catch(SQLException e)
        {
            System.out.println("데이터베이스 연결 실패");
        }
        return con;
    }

    public static void main(String[] args)
    {
        makeConnection();
    }
}
