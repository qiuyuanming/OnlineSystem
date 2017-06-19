/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao;

import com.qdu.pojo.Product;
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
public class ProductDao {

    @Autowired
    private SessionFactory sessionFactory;

    //增加產品
    public void insert(Product newProduct) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(newProduct);
        session.getTransaction().commit();
        session.close();
    }

    public void update(Product updateProduct) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(updateProduct);
        session.getTransaction().commit();
        session.close();
    }

    public void delete(int productID) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.delete(productID);
        session.getTransaction().commit();
        session.close();
    }

    public Product getProduct(int productID) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Product product = (Product) session.get(Product.class, productID);
        session.getTransaction().commit();
        session.close();
        return product;
    }
    
    public List getProductList(){
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        //Query query = session.cancelQuery("from product");
        Query query = session.createQuery("from Product");
        List list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }
    /*
        public List getUserList(){
        Session session=sessionFactory.openSession();
        session.beginTransaction();
        Query query=session.createQuery("from Users");
        List list=query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }
    **/
}
