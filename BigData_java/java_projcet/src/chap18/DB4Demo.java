package chap18;

import java.sql.*;

public class DB4Demo {
    public static Connection makConnection()
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
            System.out.println("JDBC 드라이버를 찾지 못했습니다");
        }
        catch(SQLException e)
        {
            System.out.println("데이터베이스 연결 실패");
        }
        return con;
    }

    public static void main(String[] args) throws SQLException
    {
        Connection con = makConnection();

        String sql = "SELECT * FROM membertbl";
        PreparedStatement pstmt = con.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();

        while(rs.next())
        {
            System.out.print("name : " + rs.getString("memberName") + "\t");
            System.out.println("ID : " + rs.getString("memberID") + "\t");
        }
    }
}
