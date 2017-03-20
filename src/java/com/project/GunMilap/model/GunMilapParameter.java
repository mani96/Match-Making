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
public class GunMilapParameter {
    
   
    
    Integer m_toff, m_doff;
    Integer f_toff, f_doff;
    Double m_lon, m_lat, f_lon, f_lat;
    String m_year ,m_month ,m_day ,m_hour ,m_min , m_sec, f_year, f_month ,f_day ,f_hour ,f_min , f_sec;

    public Integer getM_toff() {
        return m_toff;
    }

    public void setM_toff(Integer m_toff) {
        this.m_toff = m_toff;
    }

    public Integer getM_doff() {
        return m_doff;
    }

    public void setM_doff(Integer m_doff) {
        this.m_doff = m_doff;
    }

    public Integer getF_toff() {
        return f_toff;
    }

    public void setF_toff(Integer f_toff) {
        this.f_toff = f_toff;
    }

    public Integer getF_doff() {
        return f_doff;
    }

    public void setF_doff(Integer f_doff) {
        this.f_doff = f_doff;
    }

    public Double getM_lon() {
        return m_lon;
    }

    public void setM_lon(Double m_lon) {
        this.m_lon = m_lon;
    }

    public Double getM_lat() {
        return m_lat;
    }

    public void setM_lat(Double m_lat) {
        this.m_lat = m_lat;
    }

    public Double getF_lon() {
        return f_lon;
    }

    public void setF_lon(Double f_lon) {
        this.f_lon = f_lon;
    }

    public Double getF_lat() {
        return f_lat;
    }

    public void setF_lat(Double f_lat) {
        this.f_lat = f_lat;
    }

    public String getM_year() {
        return m_year;
    }

    public void setM_year(String m_year) {
        this.m_year = m_year;
    }

    public String getM_month() {
        return m_month;
    }

    public void setM_month(String m_month) {
        this.m_month = m_month;
    }

    public String getM_day() {
        return m_day;
    }

    public void setM_day(String m_day) {
        this.m_day = m_day;
    }

    public String getM_hour() {
        return m_hour;
    }

    public void setM_hour(String m_hour) {
        this.m_hour = m_hour;
    }

    public String getM_min() {
        return m_min;
    }

    public void setM_min(String m_min) {
        this.m_min = m_min;
    }

    public String getM_sec() {
        return m_sec;
    }

    public void setM_sec(String m_sec) {
        this.m_sec = m_sec;
    }

    public String getF_year() {
        return f_year;
    }

    public void setF_year(String f_year) {
        this.f_year = f_year;
    }

    public String getF_month() {
        return f_month;
    }

    public void setF_month(String f_month) {
        this.f_month = f_month;
    }

    public String getF_day() {
        return f_day;
    }

    public void setF_day(String f_day) {
        this.f_day = f_day;
    }

    public String getF_hour() {
        return f_hour;
    }

    public void setF_hour(String f_hour) {
        this.f_hour = f_hour;
    }

    public String getF_min() {
        return f_min;
    }

    public void setF_min(String f_min) {
        this.f_min = f_min;
    }

    public String getF_sec() {
        return f_sec;
    }

    public void setF_sec(String f_sec) {
        this.f_sec = f_sec;
    }

    
    
    @Override
    public String toString(){
        String a=new String();
        a+="{\"year\": \""+ m_year +"\"}" ;
      
        return a;
    }
}
