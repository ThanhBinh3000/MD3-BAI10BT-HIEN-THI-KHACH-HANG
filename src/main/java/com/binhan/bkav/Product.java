package com.binhan.bkav;

public class Product {
    private String name;
    private String born;
    private String address ;
    private String image;

    public Product() {
    }

    public Product(String name, String born, String address, String image) {
        this.name = name;
        this.born = born;
        this.address = address;
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBorn() {
        return born;
    }

    public void setBorn(String born) {
        this.born = born;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
