/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author ADMIN
 */
public class DBProvider {

    public static Connection getConnection() {
        String dbURL = "jdbc:mysql://localhost:3306/db_java";
        String username = "root";
        String password = "thangndpk01249";
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, username, password);
            System.out.println("connect db succsess");

        } catch (Exception e) {
            System.out.println("connect db false");
            e.printStackTrace();
        }
        return conn;
    }

    public ResultSet chonDuLieu(String sql) throws Exception {
        Connection connect = getConnection();
        Statement stmt = connect.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        return rs;
    }

}
