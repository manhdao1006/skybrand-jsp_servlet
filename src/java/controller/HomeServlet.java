/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.BookDAO;
import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Book;
import model.Category;

/**
 *
 * @author LENOVO
 */
@WebServlet(name = "HomeServlet", urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HomeServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HomeServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        DAO dao = new DAO();
        ArrayList<Category> listCategories = dao.getAllCategories();
        request.setAttribute("dataCategories", listCategories);

        String cid_raw = request.getParameter("cid");
        int cid;
        if(cid_raw == null){
            cid = 1;
        }else{
            cid = Integer.parseInt(cid_raw);
        }        
        ArrayList<Book> listBooksByCid = dao.getAllBooksByCid(cid);
        request.setAttribute("dataBooksByCid", listBooksByCid);
        
        BookDAO bdb = new BookDAO();
        
        ArrayList<Book> listTop4BooksByCid_1 = bdb.getTop4BooksByCid(1);
        request.setAttribute("dataTop4BooksByCid_1", listTop4BooksByCid_1);
        
        ArrayList<Book> listTop4BooksByCid_2 = bdb.getTop4BooksByCid(2);
        request.setAttribute("dataTop4BooksByCid_2", listTop4BooksByCid_2);
        
        ArrayList<Book> listTop4BooksByCid_3 = bdb.getTop4BooksByCid(3);
        request.setAttribute("dataTop4BooksByCid_3", listTop4BooksByCid_3);
        
        ArrayList<Book> listTop4BooksByCid_4 = bdb.getTop4BooksByCid(4);
        request.setAttribute("dataTop4BooksByCid_4", listTop4BooksByCid_4);
        
        ArrayList<Book> listTop4BooksByCid_5 = bdb.getTop4BooksByCid(5);
        request.setAttribute("dataTop4BooksByCid_5", listTop4BooksByCid_5);
        
        ArrayList<Book> listTop4BooksByCid_6 = bdb.getTop4BooksByCid(6);
        request.setAttribute("dataTop4BooksByCid_6", listTop4BooksByCid_6);
        
        ArrayList<Book> listTop4BooksByCid_7 = bdb.getTop4BooksByCid(7);
        request.setAttribute("dataTop4BooksByCid_7", listTop4BooksByCid_7);
        
        ArrayList<Book> listTop4BooksByCid_8 = bdb.getTop4BooksByCid(8);
        request.setAttribute("dataTop4BooksByCid_8", listTop4BooksByCid_8);
        
        ArrayList<Book> listTop4BooksByCid_9 = bdb.getTop4BooksByCid(9);
        request.setAttribute("dataTop4BooksByCid_9", listTop4BooksByCid_9);
        
        request.setAttribute("cid", cid);
        request.getRequestDispatcher("home.jsp").forward(request, response);
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
