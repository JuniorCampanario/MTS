package com.mts.bean;

public enum Permission {

    A_PLUS("A+"),
    A("A"),
    B_PLUS("B+"),
    B("B"),
    C_PLUS("C+"),
    C("C"),
    CT("CT");
    
    private final String name;
    
    private Permission(String name) {
        this.name = name;
    }

    public String getName() {
        return this.name;
    }
    
    
}
