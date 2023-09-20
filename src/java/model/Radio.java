/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author LENOVO
 */
public class Radio {
    private String id;
    private String radioName;
    private String radioLink;
    private String radioImage;
    private Category category;

    public Radio() {
    }

    public Radio(String id, String radioName, String radioLink, String radioImage, Category category) {
        this.id = id;
        this.radioName = radioName;
        this.radioLink = radioLink;
        this.radioImage = radioImage;
        this.category = category;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getRadioName() {
        return radioName;
    }

    public void setRadioName(String radioName) {
        this.radioName = radioName;
    }

    public String getRadioLink() {
        return radioLink;
    }

    public void setRadioLink(String radioLink) {
        this.radioLink = radioLink;
    }

    public String getRadioImage() {
        return radioImage;
    }

    public void setRadioImage(String radioImage) {
        this.radioImage = radioImage;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
    
}
