/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package admincontroler;

import DAO.categoryDAO;
import DAO.productDAO;
import DTO.categoryDTO;
import DTO.product;
import Utils.GlobalFunc;
import com.google.gson.Gson;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ADMIN
 */
public class adminProductControler extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String method = request.getMethod();
        if (method.equals("GET")) {
            try {
                //xử lý method
                HttpSession session = request.getSession();
                productDAO dao = new productDAO();
                categoryDAO catDao = new categoryDAO();
                List<product> list = new ArrayList<product>();
                List<categoryDTO> cats = new ArrayList<categoryDTO>();

                list = dao.getList();
                cats = catDao.getList();
                request.setAttribute("list", list);
                request.setAttribute("catList", cats);
                session.setAttribute("view", "pages/product.jsp");
                request.getRequestDispatcher("dashboard.jsp").forward(request, response);
            } catch (SQLException e) {
                Logger.getLogger(adminProductControler.class.getName()).log(Level.SEVERE, null, e);
            }
        } else if (method.equals("PUT")) {

            //chuc nang update
            String body = GlobalFunc.parseBody(request);
            Gson g = new Gson();
            categoryDTO cat = g.fromJson(body, categoryDTO.class);
            String name = cat.getName();
            String description = cat.getDescription();
            String image = cat.getImage();
            HashMap<String, Object> person
                    = new HashMap<String, Object>();
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");

            if (!name.equals("") && !description.equals("")) {
                categoryDTO dto = new categoryDTO(name, description, image);
                categoryDAO dao = new categoryDAO();
                boolean isCreate = dao.update(cat);
                System.err.println("isCreate" + isCreate);
                if (isCreate) {
                    person.put("message", "cập nhật thành công");
                    // lay thong tin category vừa tạo
                    categoryDTO detail = dao.getDetailById(cat.getId());
                    person.put("data", detail);
                    String json = new Gson().toJson(person);
                    response.getWriter().write(json);
                    return;
                }

                String json = new Gson().toJson(person);
                response.getWriter().write(json);
                return;
            }

        }else if (method.equals("DELETE")) {
            //chuc nang update
            String body = GlobalFunc.parseBody(request);
            Gson g = new Gson();
            HashMap<String, Object> person
                    = new HashMap<String, Object>();
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");

            categoryDTO cat = g.fromJson(body, categoryDTO.class);
            int id = cat.getId();

            categoryDAO dao = new categoryDAO();
            boolean isCreate = dao.delete(id);
            if (isCreate) {
                person.put("message", "xoá thành công");
                // lay thong tin category vừa tạo
                String json = new Gson().toJson(person);
                response.getWriter().write(json);
                return;
            }

            String json = new Gson().toJson(person);
            response.getWriter().write(json);
            return;

        }else {
            /**
             * b1: parse dữ dữ liệu từ user JSON b2: dùng GJSOn convert json to
             * object g.fromJson(body, CategoryDTO.class); b3: them du lieu xong
             * db va get statuves tra b4: tra status ve cho nguoi dung bang
             */
            String body = GlobalFunc.parseBody(request);
            System.err.println(body);
            Gson g = new Gson();
            product cat = g.fromJson(body, product.class);
            String username = cat.getName();
            
            HashMap<String, Object> person
                    = new HashMap<String, Object>();
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");

            if (!username.equals("") ) {
                product product1 = new product();
                product1.setId(20);
                product1.setName("iphone");
                product1.setDescription("gg");
                product1.setImage("gggggg");
                product1.setPrice(10000);
                product1.setCategoryid(10);
                productDAO productDao = new productDAO();
                int isCreate = productDao.create(product1);
                System.out.println(cat.getImage());
                if (isCreate > 0) {
                    // lay thong tin category vừa tạo
                    product detail = productDao.getDetailById(isCreate);
                    person.put("message", "tạo thành công");
                    person.put("data", detail);
                    
                }

                String json = new Gson().toJson(person);
                response.getWriter().write(json);
                return;
            } else {
                person.put("message", "invalid data");
                response.setStatus(400);
                String json = new Gson().toJson(person);
                response.getWriter().write(json);
            }
            return ;
        }
            
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
