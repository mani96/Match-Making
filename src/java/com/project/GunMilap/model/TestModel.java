/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project.GunMilap.model;

/**
 *
 * @author heman_000
 */
public class TestModel {
    
    public String a;
    public String b;

    public String getA() {
        return a;
    }

    public void setA(String a) {
        this.a = a;
    }

    public String getB() {
        return b;
    }

    public void setB(String b) {
        this.b = b;
    }
    
    @Override
    public String toString(){
        return a +b;
    }
}
