/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao;

import com.qdu.pojo.SalesPromotion;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author nifflers
 */
@Repository
public class SalesPromotionDao {

    @Autowired
    private SessionFactory sessionFactory;
    
    //新增一个销售策略
    public void insertSalesPromotion(SalesPromotion newSP){
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(newSP);
        session.getTransaction().commit();
        session.close();
    }
    
    //更新一个销售策略
    public void updateSalesPromotion(SalesPromotion updateSP){
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(updateSP);
        session.getTransaction().commit();
        session.close();
    }
    
    //删除一个销售策略
    public void deleteSalesPromotion(int salesId){
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Object salesPromotion = session.get(SalesPromotion.class, salesId);
        session.delete(salesId);
        session.getTransaction().commit();
        session.close();
        
    }
            
    //查询销售策略  并可以选择生成报表
    public SalesPromotion getSalesPromotion(int salesId){
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        SalesPromotion salesPromotion = (SalesPromotion)session.get(SalesPromotion.class, salesId);
        session.getTransaction().commit();
        session.close();
        return salesPromotion;
    }
    
    //获取所有的销售策略  并生成报表
    public List getSalesPromotionList(){
        Session  session = sessionFactory.openSession();
        session.beginTransaction();
        Query query = session.createQuery("from SalesPromotion");
        List list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }
    
}
