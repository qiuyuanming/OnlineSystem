package com.qdu.dao;

import com.qdu.listUtil.ProCateHelp;
import com.qdu.pojo.Product;
import com.qdu.pojo.ProductCategory;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProCateDao {

    @Autowired
    private SessionFactory sessionFactory;

    public List getProCate(Date time1, Date time2) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Query query = session.createQuery("from Product a, ProductCategory b where a.productCategory.categoryId=b.categoryId"
                + " and a.addProductDate>=:time1 and a.addProductDate<=:time2");
        query.setDate("time1", time1);
        query.setDate("time2", time2);
        List<Object[]> list = (List<Object[]>) query.list();
        session.getTransaction().commit();
        session.close();
        ArrayList<ProCateHelp> list1 = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            Object[] row = list.get(i);
            ProCateHelp pc = new ProCateHelp((Product) row[0], (ProductCategory) row[1]);
            list1.add(pc);
        }
        return list1;
    }
}
