package com.example.SQL.JDBC;

import java.sql.*;

public class Test {
    public static void main(String[] args) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = JDBConnTools.getConnection();
            String sql = "select id,password from student ";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                System.out.println("id:" + rs.getString("id"));
                System.out.println("password:" + rs.getString("password"));
            }
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        finally {
            JDBConnTools.close(conn, ps, rs);
        }
    }
}
