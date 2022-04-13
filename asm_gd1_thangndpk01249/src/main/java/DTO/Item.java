/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DTO;

/**
 *
 * @author ADMIN
 */
public class Item {
    int maSP;
    int soluong;
    String title;
    float price;
    String image;

    public Item() {
    }

    public Item(int maSP, int soluong, String title, float price, String image) {
        this.maSP = maSP;
        this.soluong = soluong;
        this.title = title;
        this.price = price;
        this.image = image;
    }

    public Item(int soluong, String title, float price, String image) {
        this.soluong = soluong;
        this.title = title;
        this.price = price;
        this.image = image;
    }

    public int getMaSP() {
        return maSP;
    }

    public void setMaSP(int maSP) {
        this.maSP = maSP;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    
    
}
