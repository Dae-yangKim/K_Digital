package chap18;

import java.sql.*;

public class DB3Demo {
    public static Connection makeConnection()
    {
        String url = 
            "jdbc:mysql://localhost/shopdb?serverTimezone=Asia/Seoul";
        Connection con = null;

        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            System.out.println("데이터베이스 연결 중...");
            con = DriverManager.getConnection(url , "root" , "eodid9523");
            System.out.println("데이터베이스 연결 성공");
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
        StringBuilder sql = new StringBuilder();
        sql.append("INSERT INTO membertbl (memberID , memberName , memberAddress)");
        sql.append("VALUES ('Hou' , '호날' , '몰라요')");
        PreparedStatement pstmt = con.prepareStatement(sql.toString());
        //pstmt.setString(1 , "배장화");
        //pstmt.setString(2 , "010-2222-2222");
        //pstmt.setString(3 , "bae@two.com");
        pstmt.execute();
    }
}
