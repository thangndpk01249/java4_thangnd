/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DTO;

/**
 *
 * @author ADMIN
 */
public class product {
     int id;
     String name;
     String description;
     float price;
     String image;
     int categoryid;

    public product() {
    }

    public product(int id, String name, String description, float price, String image, int categoryid) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.image = image;
        this.categoryid = categoryid;
    }

    public product(String name, String description, float price, String image, int categoryid) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.image = image;
        this.categoryid = categoryid;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public float getPrice() {
        return price;
    }

    public String getImage() {
        return image;
    }

    public int getCategoryid() {
        return categoryid;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setCategoryid(int categoryid) {
        this.categoryid = categoryid;
    }

    
}
