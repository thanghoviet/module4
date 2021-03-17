package com.codegym.model;

public class Mailboxes {
    String languages;
    String size;
    boolean spamsFilter;
    String signature;

    public Mailboxes() {

    }

    public Mailboxes(String languages, String size, boolean spamsFilter, String signature) {
        this.languages = languages;
        this.size = size;
        this.spamsFilter = spamsFilter;
        this.signature = signature;
    }

    public String getLanguages() {
        return languages;
    }

    public void setLanguages(String languages) {
        this.languages = languages;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public boolean isSpamsFilter() {
        return spamsFilter;
    }

    public void setSpamsFilter(boolean spamsFilter) {
        this.spamsFilter = spamsFilter;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    @Override
    public String toString() {
        return "Mailboxes{" +
                "languages='" + languages + '\'' +
                ", Size='" + size + '\'' +
                ", SpamsFilter=" + spamsFilter +
                ", signature='" + signature + '\'' +
                '}';
    }
}
