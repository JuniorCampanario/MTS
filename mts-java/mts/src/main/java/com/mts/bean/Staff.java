package com.mts.bean;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Staff implements Serializable {

    @Id @GeneratedValue
    private Long id;
    private Date data;
    
    @Column(length = 45)
    private String name;
    
    @Enumerated(EnumType.STRING)
    private Position position;
    
    @ElementCollection
    @Enumerated(EnumType.STRING)
    private List<Sector> trainedSectors;
    
    @Enumerated(EnumType.STRING)
    private Permission permission;
    
    @Enumerated(EnumType.STRING)
    private TypeTime typeTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Position getPosition() {
        return position;
    }

    public void setPosition(Position position) {
        this.position = position;
    }

    public List<Sector> getTrainedSectors() {
        return trainedSectors;
    }

    public void setTrainedSectors(List<Sector> trainedSectors) {
        this.trainedSectors = trainedSectors;
    }

    public Permission getPermission() {
        return permission;
    }

    public void setPermission(Permission permission) {
        this.permission = permission;
    }

    public TypeTime getTypeTime() {
        return typeTime;
    }

    public void setTypeTime(TypeTime typeTime) {
        this.typeTime = typeTime;
    }
    
    
}
