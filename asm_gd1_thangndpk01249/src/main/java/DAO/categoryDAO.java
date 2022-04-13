/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;


import DTO.categoryDTO;
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
public class categoryDAO {

    Connection conn = DBProvider.getConnection();
   

    
public int create(categoryDTO catz) {
        boolean result = false;
        int id = 0;
        try {
            String sql = "INSERT INTO category(name, description, image) VALUES(?, ?, ?)";
            PreparedStatement pst = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pst.setString(1, catz.getName());
            pst.setString(2, catz.getDescription());
            pst.setString(3, catz.getImage());
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

    public categoryDTO getDetailById(int id) {
        categoryDTO catz = new categoryDTO();
        try {
            String sql = "SELECT * FROM category where id=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, id);
            ResultSet rst = pst.executeQuery();
            if (rst.next()) {
                catz.setId(rst.getInt("id"));
                catz.setName(rst.getString("name"));
                catz.setDescription(rst.getString("description"));
                catz.setImage(rst.getString("image"));
                return catz;
            }
            return null;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
     public List<categoryDTO> getList() throws SQLException {
        List<categoryDTO> list = new ArrayList<categoryDTO>();
        try {
            String sql = "select * from category ORDER BY id DESC";
            if (conn != null) {
                PreparedStatement pst = conn.prepareStatement(sql);
                ResultSet resultSet = pst.executeQuery();
                while (resultSet.next()) {
                    categoryDTO user = new categoryDTO();
                    user.setId(resultSet.getInt("id"));
                    user.setName(resultSet.getString("name"));
                    user.setDescription(resultSet.getString("description"));
                    user.setImage(resultSet.getString("image"));
                    list.add(user);
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return list;
    }

    
    public boolean update(categoryDTO catz){
        boolean result = false;
        try {
            String sql = "UPDATE category set name =?, description=?, image =? where id=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, catz.getName());
            pst.setString(2, catz.getDescription());
            pst.setString(3, catz.getImage());
            pst.setInt(4, catz.getId());
            int ketqua = pst.executeUpdate();
            System.out.println("ketqua"+catz.getId());
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
            String sql = "DELETE from category where id=?";
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
    