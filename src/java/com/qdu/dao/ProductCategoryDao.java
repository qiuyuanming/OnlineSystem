/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao;

import com.qdu.pojo.ProductCategory;
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
public class ProductCategoryDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void insertProductCategory(ProductCategory newProductCategory) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(newProductCategory);
        session.getTransaction().commit();
        session.close();
    }

    public void updateProductCategory(ProductCategory updateProductCategory) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(updateProductCategory);
        session.getTransaction().commit();
        session.close();
    }

    public void deleteProductCategory(int categoryId) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Object productCategory = session.get(ProductCategory.class, categoryId);
        session.getTransaction().commit();
        session.close();
    }

    //查询产品分类
    public ProductCategory getProductCategory(int categoryId) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        ProductCategory productCategory = (ProductCategory) session.get(ProductCategory.class, categoryId);
        session.getTransaction().commit();
        session.close();
        return productCategory;
    }

    //获取产品分类列表
    public List getProductCategoryList() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Query query = session.createQuery("from ProductCategory");
        List list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }
}
