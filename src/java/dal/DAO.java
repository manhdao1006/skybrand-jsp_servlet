/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Account;
import model.Book;
import model.Category;
import model.PublishingCompany;

/**
 *
 * @author LENOVO
 */
public class DAO extends DBContext{
    //lay Books theo cid
    public ArrayList<Book> getAllBooksByCid(int cid){
        ArrayList<Book> listSkyBooks = new ArrayList<>();
        String sql = "select * from Books where 1 = 1";
        if (cid != 0) {
            sql += " and cid=" + cid + " order by id desc";
        }
        try {
            PreparedStatement sttm = connection.prepareStatement(sql);
            ResultSet rs = sttm.executeQuery();
            while(rs.next()){
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
                Category c = getCategoryById(rs.getInt("cid"));                
                book.setCategory(c);
                PublishingCompany pc = getPublishingCompanyById(rs.getInt("pcid"));
                book.setPcompany(pc);
                listSkyBooks.add(book);
            }
        } catch (Exception e) {
        }
        return listSkyBooks;
    }
    
    //lay tat ca Books
    public ArrayList<Book> getAllBooks(){
        ArrayList<Book> listSkyBooks = new ArrayList<>();
        String sql = "select * from Books";
        try {
            PreparedStatement sttm = connection.prepareStatement(sql);
            ResultSet rs = sttm.executeQuery();
            while(rs.next()){
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
                Category c = getCategoryById(rs.getInt("cid"));                
                book.setCategory(c);
                PublishingCompany pc = getPublishingCompanyById(rs.getInt("pcid"));
                book.setPcompany(pc);
                listSkyBooks.add(book);
            }
        } catch (Exception e) {
        }
        return listSkyBooks;
    }
    
    //lay tat ca cac Categories
    public ArrayList<Category> getAllCategories(){
        ArrayList<Category> listCategories = new ArrayList<>();
        String sql = "select * from Categories";
        try {
            PreparedStatement sttm = connection.prepareStatement(sql);
            ResultSet rs = sttm.executeQuery();
            while(rs.next()){
                Category c = new Category(rs.getInt("id"), rs.getString("categoryName"));
                listCategories.add(c);
            }            
        } catch (Exception e) {
        }
        return listCategories;
    }
    
    //lay tat ca cac PublishingCompany
    public ArrayList<PublishingCompany> getAllPublishingCompany(){
        ArrayList<PublishingCompany> listPublishingCompanies = new ArrayList<>();
        String sql = "select * from PublishingCompany";
        try {
            PreparedStatement sttm = connection.prepareStatement(sql);
            ResultSet rs = sttm.executeQuery();
            while(rs.next()){
                PublishingCompany pc = new PublishingCompany(rs.getInt("id"), rs.getString("companyName"), rs.getString("companyImage"));
                listPublishingCompanies.add(pc);
            }            
        } catch (Exception e) {
        }
        return listPublishingCompanies;
    }
    
    //lay Category theo id
    public Category getCategoryById(int id){
        String sql = "select * from Categories where id = ?";
        try {
            PreparedStatement sttm = connection.prepareStatement(sql);
            sttm.setInt(1, id);
            ResultSet rs = sttm.executeQuery();
            if(rs.next()){
                Category c = new Category(rs.getInt("id"), rs.getString("categoryName"));
                return c;
            }            
        } catch (Exception e) {
        }
        return null;
    }
            
    //lay PublishingCompany theo id
    public PublishingCompany getPublishingCompanyById(int id){
        String sql = "select * from PublishingCompany where id = ?";
        try {
            PreparedStatement sttm = connection.prepareStatement(sql);
            sttm.setInt(1, id);
            ResultSet rs = sttm.executeQuery();
            if(rs.next()){
                PublishingCompany pc = new PublishingCompany(rs.getInt("id"),
                                                            rs.getString("companyName"),
                                                            rs.getString("companyImage"));
                return pc;
            }            
        } catch (Exception e) {
        }
        return null;
    }
    
    //lay Book theo id
    public Book getBookById(String id){
        String sql = "select * from Books where id = ?";
        try {
            PreparedStatement sttm = connection.prepareStatement(sql);
            sttm.setString(1, id);
            ResultSet rs = sttm.executeQuery();
            while(rs.next()){
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
                Category c = getCategoryById(rs.getInt("cid"));                
                book.setCategory(c);
                PublishingCompany pc = getPublishingCompanyById(rs.getInt("pcid"));
                book.setPcompany(pc);
                return book;
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    //lay danh sach bang trang, hien thi tung trang
    public ArrayList<Book> getListByPage(ArrayList<Book> list, int start, int end){
        ArrayList<Book> arr = new ArrayList<>();
        for(int i = start; i < end; i++){
            arr.add(list.get(i));
        }
        return arr;
    }    
    
    //lay Account
    public Account getAccount(String username, String password){
        String sql = "select * from Accounts where username = ? and password = ?";
        try {
            PreparedStatement sttm = connection.prepareStatement(sql);
            sttm.setString(1, username);
            sttm.setString(2, password);
            ResultSet rs = sttm.executeQuery();
            if(rs.next()){
                Account a = new Account(rs.getInt("id"),
                                        rs.getString("username"),
                                        rs.getString("password"));
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }
}
