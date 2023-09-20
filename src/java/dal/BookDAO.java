/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Book;
import model.Category;
import model.PublishingCompany;

/**
 *
 * @author LENOVO
 */
public class BookDAO extends DBContext {

    public ArrayList<Book> getTop4BooksByCid(int cid) {
        ArrayList<Book> listTop4BooksByCid = new ArrayList<>();
        String sql = "select top 4 with ties * from Books where cid = ? order by id desc";
        try {
            PreparedStatement sttm = connection.prepareStatement(sql);
            sttm.setInt(1, cid);
            ResultSet rs = sttm.executeQuery();
            while (rs.next()) {
                Book book = new Book();
                book.setId(rs.getString("id"));
                book.setBookName(rs.getString("bookName"));
                book.setBookImage(rs.getString("bookImage"));
                book.setAuthor(rs.getString("author"));
                book.setPrice(rs.getDouble("price"));
                book.setQuantity(rs.getInt("quantity"));
                book.setPublishingYear(rs.getInt("publishingYear"));
                book.setLanguage(rs.getString("language"));
                book.setNumberPage(rs.getInt("numberPage"));
                book.setForm(rs.getString("form"));
                book.setWeight(rs.getInt("weight"));
                book.setBookDescribe(rs.getString("bookDescribe"));
                DAO dao = new DAO();
                Category c = dao.getCategoryById(rs.getInt("cid"));
                book.setCategory(c);
                PublishingCompany pc = dao.getPublishingCompanyById(rs.getInt("pcid"));
                book.setPcompany(pc);
                listTop4BooksByCid.add(book);
            }
        } catch (Exception e) {
        }
        return listTop4BooksByCid;
    }

    public int insertBook(Book book) {
        String sql = "INSERT INTO [dbo].[Books]\n"
                + "           ([id]\n"
                + "           ,[bookName]\n"
                + "           ,[bookImage]\n"
                + "           ,[author]\n"
                + "           ,[price]\n"
                + "           ,[quantity]\n"
                + "           ,[publishingYear]\n"
                + "           ,[language]\n"
                + "           ,[numberPage]\n"
                + "           ,[form]\n"
                + "           ,[weight]\n"
                + "           ,[bookDescribe]\n"
                + "           ,[cid]\n"
                + "           ,[pcid])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement sttm = connection.prepareStatement(sql);
            sttm.setString(1, book.getId());
            sttm.setString(2, book.getBookName());
            sttm.setString(3, book.getBookImage());
            sttm.setString(4, book.getAuthor());
            sttm.setDouble(5, book.getPrice());
            sttm.setInt(6, book.getQuantity());
            sttm.setInt(7, book.getPublishingYear());
            sttm.setString(8, book.getLanguage());
            sttm.setInt(9, book.getNumberPage());
            sttm.setString(10, book.getForm());
            sttm.setInt(11, book.getWeight());
            sttm.setString(12, book.getBookDescribe());
            sttm.setInt(13, book.getCategory().getId());
            sttm.setInt(14, book.getPcompany().getId());

            sttm.executeUpdate();
            return 1;
        } catch (Exception e) {
        }
        return -1;
    }

    public int delete(String id) {
        String sql = "delete from Books where id = ?";
        try {
            PreparedStatement sttm = connection.prepareStatement(sql);

            sttm.setString(1, id);

            sttm.executeUpdate();
            return 1;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return -1;
    }

    public int update(Book book) {
        String sql = "UPDATE Books\n"
                + "   SET bookName = ?\n"
                + "      ,bookImage = ?\n"
                + "      ,author = ?\n"
                + "      ,price = ?\n"
                + "      ,quantity = ?\n"
                + "      ,publishingYear = ?\n"
                + "      ,[language] = ?\n"
                + "      ,numberPage = ?\n"
                + "      ,form = ?\n"
                + "      ,[weight] = ?\n"
                + "      ,bookDescribe = ?\n"
                + "      ,cid = ?\n"
                + "      ,pcid = ?\n"
                + " WHERE id = ?";
        try {
            PreparedStatement sttm = connection.prepareStatement(sql);
            sttm.setString(1, book.getBookName());
            sttm.setString(2, book.getBookImage());
            sttm.setString(3, book.getAuthor());
            sttm.setDouble(4, book.getPrice());
            sttm.setInt(5, book.getQuantity());
            sttm.setInt(6, book.getPublishingYear());
            sttm.setString(7, book.getLanguage());
            sttm.setInt(8, book.getNumberPage());
            sttm.setString(9, book.getForm());
            sttm.setInt(10, book.getWeight());
            sttm.setString(11, book.getBookDescribe());
            sttm.setInt(12, book.getCategory().getId());
            sttm.setInt(13, book.getPcompany().getId());
            sttm.setString(14, book.getId());

            sttm.executeUpdate();
            return 1;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return -1;
    }
}
