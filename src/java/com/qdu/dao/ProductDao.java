/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao;

import com.qdu.pojo.Product;
import java.sql.Date;
import java.util.ArrayList;
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

    //增加一个产品
    public void insert(Product newProduct) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(newProduct);
        session.getTransaction().commit();
        session.close();
    }
    
    //修改一个产品
    public void update(Product updateProduct) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(updateProduct);
        session.getTransaction().commit();
        session.close();
    }

    //删除一个产品
    public void delete(int productID) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.delete(productID);
        session.getTransaction().commit();
        session.close();
    }

    //获取（信息）一个产品  获取的是这个产品的信息
    public Product getProduct(int productID) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Product product = (Product) session.get(Product.class, productID);
        session.getTransaction().commit();
        session.close();
        return product;
    }
    
    //获取产品 列表
    public List getProductList(){
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Query query = session.createQuery("from Product");
        List list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }
    
    //根据任意时间段查询 产品列表，比如，上个月添加产品的列表
    public List getProductListByTime(Date beginTime, Date endTime){  
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        //根据时间段来查询  物品列表   只是查询时间段 不需 联表查询。
        Query query = session.createQuery("from Product p where p.addProductDate >=:beginTime and p.addProductDate <=:endTime ");
        query.setDate("beginTime", beginTime);
        query.setDate("endTime", endTime);
        
        List<Object[]> list = (List<Object[]>)query.list();
        session.getTransaction().commit();
        session.close();
        //ArrayList()
        ArrayList<Product> productList = new ArrayList<>();
        for(int i=0; i < productList.size(); i++){
            Product row = productList.get(i);
            // product = new Product(row[i]);
            //list.add();
        }
        
        
        
        return null;
        
        
    }
}
