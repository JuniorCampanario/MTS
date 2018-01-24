package com.mts;

import com.mts.bean.Permission;
import com.mts.bean.Position;
import com.mts.bean.Sector;
import com.mts.bean.Staff;
import com.mts.bean.TypeTime;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Main {
    
    public static void main(String[] args) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("mts");
        EntityManager em = emf.createEntityManager();
        
        em.getTransaction().begin();
        
        Staff staff = new Staff();
        staff.setName("José René Campanario");
        staff.setPermission(Permission.A_PLUS);
        staff.setPosition(Position.TL);
        List<Sector> trainedSectors = new ArrayList<Sector>();
        trainedSectors.add(Sector.WD);
        trainedSectors.add(Sector.P);
        staff.setTrainedSectors(trainedSectors);
        staff.setTypeTime(TypeTime.Part);
        
        em.persist(staff);
        
        em.getTransaction().commit();
        
        em.close();
    }
    
}
