package com.codegym.model;

public class Money {
    float VND;
    float USD;
    float total;

    public Money(){

    }

    public Money(float VND, float USD) {
        this.VND = VND;
        this.USD = USD;
    }

    public Money(float VND, float USD, float total) {
        this.VND = VND;
        this.USD = USD;
        this.total = total;
    }

    public float getVND() {
        return VND;
    }

    public void setVND(float VND) {
        this.VND = VND;
    }

    public float getUSD() {
        return USD;
    }

    public void setUSD(float USD) {
        this.USD = USD;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Money{" +
                "VND=" + VND +
                ", USD=" + USD +
                ", total=" + total +
                '}';
    }
}
