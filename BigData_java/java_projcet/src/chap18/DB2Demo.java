package chap18;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB2Demo {
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
            System.out.println("JDBC 드라이버를 찾지 못했습니다...");
        }
        catch(SQLException e)
        {
            System.out.println("데이터베이스 연결 실패");
        }

        return con;
    }

    public static void main(String[] args) throws SQLException
    {
        Connection con = makeConnection();
        Statement stmt = con.createStatement();

        String sql = "INSERT INTO membertbl (memberID , memberName , memberAddress) VALUES "
            + "('Kong' , '콘콘' , '어딘가')";
        
        if(stmt.executeUpdate(sql) == 1)
            System.out.println("레코드 추가 성공");
        else
            System.out.println("레코드 추가 실패");

        con.close();
        stmt.close();
    }
}
