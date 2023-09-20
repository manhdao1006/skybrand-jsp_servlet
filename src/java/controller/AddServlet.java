/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import com.oreilly.servlet.MultipartRequest;
import dal.BookDAO;
import dal.DAO;
import javax.servlet.ServletContext;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Book;
import model.Category;
import model.PublishingCompany;

/**
 *
 * @author LENOVO
 */
@WebServlet(name = "AddServlet", urlPatterns = {"/add"})
@MultipartConfig
public class AddServlet extends HttpServlet {

    private String dbURL = "jdbc:sqlserver://THINKBOOK14\\\\SQLEXPRESS:1433;databaseName=SkyBrands";
    private String dbUser = "DAODUCMANH";
    private String dbPass = "manh10062003";

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
            out.println("<title>Servlet AddServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddServlet at " + request.getContextPath() + "</h1>");
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

        ArrayList<PublishingCompany> listPublishingCompanies = dao.getAllPublishingCompany();
        request.setAttribute("dataPublishingCompanies", listPublishingCompanies);

        ArrayList<Category> listCategories = dao.getAllCategories();
        request.setAttribute("dataCategories", listCategories);

        ArrayList<Book> listBooks = dao.getAllBooks();
        request.setAttribute("dataBooks", listBooks);

        request.getRequestDispatcher("admin.jsp").forward(request, response);
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
        ServletContext context = request.getServletContext();
        String realpath = context.getRealPath("/img/books");  
        MultipartRequest multi = new MultipartRequest(request, realpath, 10*1024*1024, "UTF-8");
        multi.getContentType("UTF-8");

        String bookID = multi.getParameter("bookID");
        String bookName = multi.getParameter("bookName");
        String author = multi.getParameter("author");
        String price_raw = multi.getParameter("price");
        String quantity_raw = multi.getParameter("quantiy");
        String cID_raw = multi.getParameter("cID");
        String publishingYear_raw = multi.getParameter("publishingYear");
        String pcID_raw = multi.getParameter("pcID");
        String language = multi.getParameter("language");
        String pageNumber_raw = multi.getParameter("pageNumber");
        String form = multi.getParameter("form");
        String weight_raw = multi.getParameter("weight");
        String image = multi.getFilesystemName("image");
        String describe = multi.getParameter("describe");

        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client

        
        try {
            // connects to the database
//            DriverManager.registerDriver(new com.sqlserver.jdbc.Driver());
            DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            // constructs SQL statement
            String sql = "INSERT INTO Books(id, bookName, bookImage, author, price, quantity, publishingYear, "
                    + "language, numberPage, form, weight, bookDescribe, cid, pcid) "
                    + "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement sttm = conn.prepareStatement(sql);
            int i = 1;
            Object [] param={bookID,bookName,image,author,price_raw,quantity_raw,publishingYear_raw,
                language,pageNumber_raw,form,weight_raw,describe,cID_raw,pcID_raw};
            for (Object value : param) {
                sttm.setObject(i, value);
                i++;
            }
//            sttm.setString(1, bookID);
//            sttm.setString(2, bookName);
//            sttm.setString(3, image);
//            sttm.setString(4, author);
//
//            double price = Double.parseDouble(price_raw);
//            sttm.setDouble(5, price);
//            
//            int quantity = Integer.parseInt(quantity_raw);
//            sttm.setInt(6, quantity);
//            
//            int publishingYear = Integer.parseInt(publishingYear_raw);
//            sttm.setInt(7, publishingYear);
//
//            sttm.setString(8, language);
//
//            int numberPage = Integer.parseInt(pageNumber_raw);
//            sttm.setInt(9, numberPage);
//
//            sttm.setString(10, form);
//
//            int weight = Integer.parseInt(weight_raw);
//            sttm.setInt(11, weight);
//
//            sttm.setString(12, describe);
//
//            int cID = Integer.parseInt(cID_raw);
//            sttm.setInt(13, cID);
//
//            int pcID = Integer.parseInt(pcID_raw);
//            sttm.setInt(14, pcID);

            // sends the statement to the database server
            int row = sttm.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        }

        // sets the message in request scope
        request.setAttribute("Message", message);
        // forwards to the message page
        request.getRequestDispatcher("/Message.jsp").forward(request, response);
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
