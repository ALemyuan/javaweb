package com.example.SQL.JDBC;

import java.sql.*;

public class JDBConnTools {
    private static String  driver;
    private static String  url;
    private static String  username;
    private static String password;

    static {
        try {

            //获取配置文件的信息
            driver = "com.mysql.cj.jdbc.Driver";
            url = "jdbc:mysql://localhost:3306/student_data";
            username = "root";
            password = "061etyWE";

            //加载驱动类
            Class.forName(driver);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url,username,password);
    }

    public static void release(Connection connection, Statement statement, ResultSet resultSet) {

        if (resultSet != null) {
            try {
                resultSet.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (statement != null) {
            try {
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public static void close(Connection conn, PreparedStatement ps, ResultSet rs) {
        try{
            if (conn != null){
                conn.close();
            }
            if (ps != null){
                ps.close();
            }
            if (rs != null){
                rs.close();
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
