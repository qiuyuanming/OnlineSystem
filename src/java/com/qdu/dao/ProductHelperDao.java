/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao;

import com.qdu.pojo.ProductHelper;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author nifflers
 */
@Repository
public class ProductHelperDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void insertProductHelper(ProductHelper newPH) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(newPH);
        session.getTransaction().commit();
        session.close();
    }

    public void updateProductHelper(ProductHelper updatePH) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(updatePH);
        session.getTransaction().commit();
        session.close();
    }

    public void deleteProductHelper(int deletePHId) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Object productHelper = session.get(ProductHelper.class, deletePHId);
        session.delete(deletePHId);
        session.getTransaction().commit();
        session.close();
    }

    public ProductHelper getProductHelper() {
        
        return null;
    }
}
