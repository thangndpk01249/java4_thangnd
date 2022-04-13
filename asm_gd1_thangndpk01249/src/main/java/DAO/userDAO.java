/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DTO.Account;
import Utils.DBProvider;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class userDAO {

    Connection conn = DBProvider.getConnection();
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account login(String username, String password, String email) {
        String query = "select * from user where username = ? and password = ?";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account( rs.getString(1), rs.getString(2), rs.getString(3));
            }
        } catch (Exception e) {
        }
        return null;
    }
public int create(Account cat) {
        boolean result = false;
        int id = 0;
        try {
            String sql = "INSERT INTO user(username, password, email) VALUES(?, ?, ?)";
            PreparedStatement pst = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pst.setString(1, cat.getUsername());
            pst.setString(2, cat.getPassword());
            pst.setString(3, cat.getEmail());
            int ketqua = pst.executeUpdate();
            if (ketqua > 0) {
                System.out.println("go here test");
                if (ketqua > 0) {
                    // Retrieves any auto-generated keys created as a result of executing this Statement object

                    ResultSet generatedKeys = pst.getGeneratedKeys();

                    if (generatedKeys.next()) {
                        id = generatedKeys.getInt(1);
                    }
                    System.out.println("id" + id);
                }
                return id;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return id;
    }
    public void register(String username, String password, String email) {
        String query = "INSERT INTO user(username,password,email) value (?,?,?)";
        try {
            
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, email);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public Account getDetailById(int id) {
        Account cat = new Account();
        try {
            String sql = "SELECT * FROM user where id=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, id);
            ResultSet rst = pst.executeQuery();
            if (rst.next()) {
                cat.setId(rst.getInt("id"));
                cat.setUsername(rst.getString("username"));
                cat.setPassword(rst.getString("password"));
                cat.setEmail(rst.getString("email"));
                return cat;
            }
            return null;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
     public List<Account> getList() throws SQLException {
        List<Account> list = new ArrayList<Account>();
        try {
            String sql = "select * from user ORDER BY id DESC";
            if (conn != null) {
                PreparedStatement pst = conn.prepareStatement(sql);
                ResultSet resultSet = pst.executeQuery();
                while (resultSet.next()) {
                    Account user = new Account();
                    user.setId(resultSet.getInt("id"));
                    user.setUsername(resultSet.getString("username"));
                    user.setPassword(resultSet.getString("password"));
                    user.setEmail(resultSet.getString("email"));
                    list.add(user);
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public Account checkAccountExits(String username) {
        try {
            String query = "select * from user where username = ?";

            ps = conn.prepareStatement(query);
            ps.setString(1, username);

            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1), rs.getString(2), rs.getString(3));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public boolean update(Account cat){
        boolean result = false;
        try {
            String sql = "UPDATE user set username =?, password=?, email =? where id=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, cat.getUsername());
            pst.setString(2, cat.getPassword());
            pst.setString(3, cat.getEmail());
            pst.setInt(4, cat.getId());
            int ketqua = pst.executeUpdate();
            System.out.println("ketqua"+cat.getId());
            if (ketqua > 0) {
                result = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }
    public boolean delete(int id) {
        boolean result = false;
        try {
            String sql = "DELETE from user where id=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, id);
            int ketqua = pst.executeUpdate();
            if (ketqua > 0) {
                result = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }
}
    