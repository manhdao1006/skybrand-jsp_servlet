/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

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
@WebServlet(name = "ListDetailsOfCategoriesServlet", urlPatterns = {"/list_details_of_categories"})
public class ListDetailsOfCategoriesServlet extends HttpServlet {

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
            out.println("<title>Servlet DetailsServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DetailsServlet at " + request.getContextPath() + "</h1>");
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
        //lay danh sach Books theo 'Cid'
        String cid_raw = request.getParameter("cid");
        int cid;
        if(cid_raw == null){
            cid = 1;
        }else{
            cid = Integer.parseInt(cid_raw);
        }        
        ArrayList<Book> listBooksByCid = dao.getAllBooksByCid(cid);
        request.setAttribute("dataBooksByCid", listBooksByCid);
        //lay Book theo 'ID'
        String bookId = request.getParameter("bookId");
        Book bookDetails = dao.getBookById(bookId);
        request.setAttribute("dataBook", bookDetails);
        //lay theo 'Page'
        int size = listBooksByCid.size();//so luong sach
        int page;//trang thu may
        int numperpage = 12;//cho bao nhieu phan tu tren 1 trang
        int num = (size % numperpage == 0 ? (size / numperpage) : ((size / numperpage) + 1));//bao nhieu trang (so trang)
        //tra ve trang nao, nhan cai trang nao
        String xpage = request.getParameter("page");
        if (xpage == null) {
            page = 1;
        } else {
            page = Integer.parseInt(xpage);
        }
        int start;
        int end;
        start = (page - 1) * numperpage;//trang thu bao nhieu
        end = Math.min((page * numperpage), size);

        ArrayList<Book> listBooksByPage = dao.getListByPage(listBooksByCid, start, end);

        request.setAttribute("dataBooksByPage", listBooksByPage);
        
        ArrayList<Category> listCategories = dao.getAllCategories();
        request.setAttribute("dataCategories", listCategories);
        
        request.setAttribute("cid", cid);
        //gui 'page' qua nua, de biet minh vua chon cai page nao
        request.setAttribute("page", page);
        //gui bao nhieu trang
        request.setAttribute("numpage", num);

        request.getRequestDispatcher("list_details_of_categories.jsp").forward(request, response);
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
