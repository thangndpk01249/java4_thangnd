/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package admincontroler;

import DAO.categoryDAO;
import DTO.categoryDTO;
import Utils.GlobalFunc;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
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
public class adminCategoryControler extends HttpServlet {

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
        if(method.equals("GET")){
            try {
                //xử lý method
                HttpSession session = request.getSession();
                categoryDAO dao = new categoryDAO();
                List<categoryDTO> list = new ArrayList<categoryDTO>();
                list = dao.getList();
                request.setAttribute("list", list);
                session.setAttribute("view", "pages/categorynew.jsp");
                request.getRequestDispatcher("dashboard.jsp").forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(adminCategoryControler.class.getName()).log(Level.SEVERE, null, ex);
            }
        }else if(method.equals("PUT")){
            //chức năng update
            String body  = GlobalFunc.parseBody(request);
            Gson g = new Gson();
            categoryDTO catz = g.fromJson(body, categoryDTO.class);
            String name = catz.getName();
            String description = catz.getDescription();
            String image = catz.getImage();
            HashMap<String, Object> person
                    = new HashMap<String, Object>();
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            if (!name.equals("") && !image.equals("")) {
                categoryDTO dto = new categoryDTO(name,description,image);
                categoryDAO dao = new categoryDAO();
                boolean isCreate = dao.update(catz);
                if(isCreate){
                    person.put("message", "cập nhật thành công");
                    // lay thong tin category vừa tạo
                    categoryDTO detail = dao.getDetailById(catz.getId());
                    person.put("data", detail);
                    String json = new Gson().toJson(person);
                    response.getWriter().write(json);
                    return;
                }
                String json = new Gson().toJson(person);
                response.getWriter().write(json);
                   return;
                }
            //delete
            }else if(method.equals("DELETE")){
            //chuc nang delete
            String body = GlobalFunc.parseBody(request);
            Gson g = new Gson();
            
            HashMap<String, Object> person
                    = new HashMap<String, Object>();
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");

            categoryDTO catz = g.fromJson(body, categoryDTO.class);
                int id = catz.getId();
                categoryDAO dao = new categoryDAO();
                boolean isCreate = dao.delete(id);
                System.err.println("isCreate" + isCreate);
                if (isCreate) {
                    person.put("message", "xoá thành công");
                    String json = new Gson().toJson(person);
                    response.getWriter().write(json);
                    return;
                }

                String json = new Gson().toJson(person);
                response.getWriter().write(json);
                   return;
            }else  {
            /**
             * b1: parse dữ dữ liệu từ user JSON b2: dùng GJSOn convert json to
             * object g.fromJson(body, CategoryDTO.class); b3: them du lieu xong
             * db va get statuves tra b4: tra status ve cho nguoi dung bang
             */
            System.out.println("go here");
            String body = GlobalFunc.parseBody(request);
            Gson g = new Gson();
            categoryDTO catz = g.fromJson(body, categoryDTO.class);
            String name = catz.getName();
            String description = catz.getDescription();
            String image = catz.getImage();
            HashMap<String, Object> person
                    = new HashMap<String, Object>();
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");

            if (!name.equals("") && !image.equals("")) {
                categoryDTO dto = new categoryDTO(name, description, image);
                categoryDAO dao = new categoryDAO();
                int isCreate = dao.create(dto);
                if (isCreate > 0) {
                    // lay thong tin category vừa tạo
                    categoryDTO detail = dao.getDetailById(isCreate);
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
            System.out.println("go here" + body);
             return;
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
