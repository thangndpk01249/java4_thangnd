/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DTO.Account;
import DTO.categoryDTO;
import DTO.product;
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
public class productDAO {
    Connection conn = DBProvider.getConnection();
    public int create(product product) {
        boolean result = false;
        int id = 0;
        try {
            String sql = "INSERT INTO product(name, description, price , image, categoryid)"
                    + " VALUES(?, ?, ?, ?, ?)";
          //  PreparedStatement pst = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
          PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, product.getName());
            pst.setString(2, product.getDescription());
            pst.setString(3, product.getImage());
            pst.setFloat(4, product.getPrice());
            pst.setInt(5, product.getCategoryid());

            int ketqua = pst.executeUpdate();
            if (ketqua > 0) {
                if (ketqua > 0) {
                    // Retrieves any auto-generated keys created as a result of executing this Statement object

                    ResultSet generatedKeys = pst.getGeneratedKeys();

                    if (generatedKeys.next()) {
                        id = generatedKeys.getInt(1);
                    }
                }
                return id;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return id;
    }
public boolean update(categoryDTO cat) {
        boolean result = false;
        try {
            String sql = "UPDATE category set name =?, description=?, image =? where id=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, cat.getName());
            pst.setString(2, cat.getDescription());
            pst.setString(3, cat.getImage());
            pst.setInt(4, cat.getId());
            int ketqua = pst.executeUpdate();
            System.out.println("ketqua" + cat.getId());
            if (ketqua > 0) {
                result = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }
    public product getDetailById(int id) {
        product cat = new product();
        try {
            String sql = "SELECT * FROM product where id=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, id);
            ResultSet rst = pst.executeQuery();
            if (rst.next()) {
               cat.setId(rst.getInt("id"));
                cat.setName(rst.getString("name"));
                 cat.setDescription(rst.getString("description"));
                 cat.setPrice(rst.getFloat("price"));
                  cat.setImage(rst.getString("image"));
                  cat.setId(rst.getInt("idcategory"));
                return cat;
            }
            return null;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
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
    public List<product> getList() throws SQLException {
        List<product> list = new ArrayList<product>();
        try {
            String sql = "select * from product ORDER BY id DESC";
            if (conn != null) {
                PreparedStatement pst = conn.prepareStatement(sql);
                ResultSet resultSet = pst.executeQuery();
                while (resultSet.next()) {
                    product user = new product();
                    user.setId(resultSet.getInt("id"));
                    user.setName(resultSet.getString("name"));
                    user.setDescription(resultSet.getString("description"));
                    user.setPrice(resultSet.getFloat("price"));
                    user.setImage(resultSet.getString("image"));
                    user.setCategoryid(resultSet.getInt("categoryid"));
                    list.add(user);
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return list;
    }
    public static void main(String[] args) throws SQLException {
        productDAO product = new productDAO();
        List<product> list = product.getList();
        for(product o :list){
            System.out.println(o);
        }
            
    }
}
