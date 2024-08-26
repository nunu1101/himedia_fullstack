package com.ohgiraffers.section03.dto;

public class HumanDTO {
    private String name;
    private int year;
    private int month;
    private int date;

    public void setName(String name){
        this.name = name;
    }

    public void setYear(int year){
        this.year = year;
    }

    public void setMonth(int month){
        this.month = month;
    }
    public void setDate(int date){
        this.date = date;
    }

    public String getName() {
        return name;
    }
    public int getYear() {
        return year;
    }
    public int getMonth(){
        return month;
    }
    public int getDate(){
        return date;
    }

}
