/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package DAO;

import DAO.categoryDAO;
import DAO.productDAO;
import DTO.categoryDTO;
import DTO.product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
public class homeControler extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
           /* TODO output your page here. You may use following sample code. */
            /**
             * b1: danh mục sản phẩm b2: danh sách sản phẩm
             */
            categoryDAO catDao = new categoryDAO();
            productDAO productDao = new productDAO();
            List<categoryDTO> listCat = new ArrayList<categoryDTO>();
            listCat = catDao.getList();
            request.setAttribute("listCat", listCat);
            
            String id = request.getParameter("id");
            if (id != null) {
                // detail page
                product detail = productDao.getDetailById(Integer.parseInt(id));
                categoryDTO catDetail = catDao.getDetailById(detail.getCategoryid());
                request.setAttribute("detail", detail);
                request.setAttribute("catDetail", catDetail);
                request.getRequestDispatcher("productDetail.jsp").forward(request, response);
            }
            
            List<product> lisProduct = new ArrayList<product>();
            
            lisProduct = productDao.getList();
          
            request.setAttribute("listProduct", lisProduct);
            request.getRequestDispatcher("products.jsp").forward(request, response);
        }catch (Exception e) {
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
