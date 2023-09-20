/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import javax.servlet.http.Part;

/**
 *
 * @author LENOVO
 */
public class Book {
    private String id;
    private String bookName;
    private String bookImage;
    private String author;
    private double price;
    private int quantity;
    private int publishingYear;
    private String language;
    private int numberPage;
    private String form;
    private int weight;
    private String bookDescribe;
    private Category category;
    private PublishingCompany pcompany;

    public Book() {
    }

    public Book(String id, String bookName, String bookImage, String author, double price, int quantity, int publishingYear, String language, int numberPage, String form, int weight, String bookDescribe, Category category, PublishingCompany pcompany) {
        this.id = id;
        this.bookName = bookName;
        this.bookImage = bookImage;
        this.author = author;
        this.price = price;
        this.quantity = quantity;
        this.publishingYear = publishingYear;
        this.language = language;
        this.numberPage = numberPage;
        this.form = form;
        this.weight = weight;
        this.bookDescribe = bookDescribe;
        this.category = category;
        this.pcompany = pcompany;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getBookImage() {
        return bookImage;
    }

    public void setBookImage(String bookImage) {
        this.bookImage = bookImage;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
    
    public int getPublishingYear() {
        return publishingYear;
    }

    public void setPublishingYear(int publishingYear) {
        this.publishingYear = publishingYear;
    }
    
    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public int getNumberPage() {
        return numberPage;
    }

    public void setNumberPage(int numberPage) {
        this.numberPage = numberPage;
    }

    public String getForm() {
        return form;
    }

    public void setForm(String form) {
        this.form = form;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public String getBookDescribe() {
        return bookDescribe;
    }

    public void setBookDescribe(String bookDescribe) {
        this.bookDescribe = bookDescribe;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public PublishingCompany getPcompany() {
        return pcompany;
    }

    public void setPcompany(PublishingCompany pcompany) {
        this.pcompany = pcompany;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
        
}
