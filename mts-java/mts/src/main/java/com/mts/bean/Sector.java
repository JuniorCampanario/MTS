package com.mts.bean;

public enum Sector {
    
    WD("WipeDown"),
    CS("Cashier/Sale"),
    P("Prep"),
    D("Detailer");
    
    private final String name;
    
    private Sector(String name) {
        this.name = name;
    }

    public String getName() {
        return this.name;
    }
    
}
