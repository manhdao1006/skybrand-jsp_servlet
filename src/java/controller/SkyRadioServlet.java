/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAO;
import dal.RadioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Radio;

/**
 *
 * @author LENOVO
 */
@WebServlet(name = "SkyRadioServlet", urlPatterns = {"/skyradio"})
public class SkyRadioServlet extends HttpServlet {

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
            out.println("<title>Servlet SkyRadioServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SkyRadioServlet at " + request.getContextPath() + "</h1>");
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
        if (cid_raw == null) {
            cid = 1;
        } else {
            cid = Integer.parseInt(cid_raw);
        }
        
        RadioDAO rdb = new RadioDAO();
        ArrayList<Radio> listRadioByCid = rdb.getAllRadioByCid(cid);
        request.setAttribute("dataRadioByCid", listRadioByCid);

        ArrayList<Radio> listTop4RadioByCid_1 = rdb.getTop4RadioByCid(1);
        request.setAttribute("dataTop4RadioByCid_1", listTop4RadioByCid_1);

        ArrayList<Radio> listTop4RadioByCid_2 = rdb.getTop4RadioByCid(2);
        request.setAttribute("dataTop4RadioByCid_2", listTop4RadioByCid_2);

//        ArrayList<Radio> listTop4RadioByCid_3 = rdb.getTop4RadioByCid(3);
//        request.setAttribute("dataTop4RadioByCid_3", listTop4RadioByCid_3);
//
//        ArrayList<Radio> listTop4RadioByCid_4 = rdb.getTop4RadioByCid(4);
//        request.setAttribute("dataTop4RadioByCid_4", listTop4RadioByCid_4);
//
//        ArrayList<Radio> listTop4RadioByCid_5 = rdb.getTop4RadioByCid(5);
//        request.setAttribute("dataTop4RadioByCid_5", listTop4RadioByCid_5);

        ArrayList<Radio> listTop4RadioByCid_6 = rdb.getTop4RadioByCid(6);
        request.setAttribute("dataTop4RadioByCid_6", listTop4RadioByCid_6);

        ArrayList<Radio> listTop4RadioByCid_7 = rdb.getTop4RadioByCid(7);
        request.setAttribute("dataTop4RadioByCid_7", listTop4RadioByCid_7);

        ArrayList<Radio> listTop4RadioByCid_8 = rdb.getTop4RadioByCid(8);
        request.setAttribute("dataTop4RadioByCid_8", listTop4RadioByCid_8);

//        ArrayList<Radio> listTop4RadioByCid_9 = rdb.getTop4RadioByCid(9);
//        request.setAttribute("dataTop4RadioByCid_9", listTop4RadioByCid_9);

        request.setAttribute("cid", cid);
        request.getRequestDispatcher("skyradio.jsp").forward(request, response);
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
