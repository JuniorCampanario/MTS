package com.mts.bean;

public enum Position {
    
    SD("Standard"),
    TL("Team Leader"), 
    SP("Supervisor"), 
    AM("Assistent Manager"), 
    MG("Manager");
    
    private final String name;
    
    private Position(String name) {
        this.name = name;
    }

    public String getName() {
        return this.name;
    }

    
}
