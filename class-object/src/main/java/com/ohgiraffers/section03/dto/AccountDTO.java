package com.ohgiraffers.section03.dto;

public class AccountDTO {
    private String accountNo;
    private String ownerName;
    private int balance;

    public void setAccountNo(String accountNo){
        this.accountNo = accountNo;
    }
    public void setOwnerName(String accountNo){
        this.ownerName = ownerName;
    }
    public void setBalance(int balance){
        this.balance = balance;
    }
    public String getAccountNo(){
        return accountNo;
    }
    public String getOwnerName(){
        return ownerName;
    }
    public int getBalance(){
        return balance;
    }
}
