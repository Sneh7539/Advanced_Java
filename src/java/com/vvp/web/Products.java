/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vvp.web;

/**
 *
 * @author Sneh
 */
public class Products {
    public int pID;
    public String pName;
    public String pDescription;
    public Double pPrice;
    public int pStock;

    public Products(int pID, String pName, String pDescription, Double pPrice, int pStock) {
        this.pID = pID;
        this.pName = pName;
        this.pDescription = pDescription;
        this.pPrice = pPrice;
        this.pStock = pStock;
    }

    public int getpID() {
        return pID;
    }

    public String getpName() {
        return pName;
    }

    public String getpDescription() {
        return pDescription;
    }

    public Double getpPrice() {
        return pPrice;
    }

    public int getpStock() {
        return pStock;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public void setpDescription(String pDescription) {
        this.pDescription = pDescription;
    }

    public void setpPrice(Double pPrice) {
        this.pPrice = pPrice;
    }

    public void setpStock(int pStock) {
        this.pStock = pStock;
    }
    
}

    