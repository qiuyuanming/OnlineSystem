package com.qdu.dao;

import com.qdu.listUtil.ListUtil;
import com.qdu.listUtil.Test;
import com.qdu.pojo.OrderDetails;
import com.qdu.pojo.OrderList;
import com.qdu.pojo.Product;
import com.qdu.pojo.Users;
import java.sql.Date;
//import java.util.Date;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderListDao {

    @Autowired
    private SessionFactory sessionFactory;

    public List getUserListByTime(Date time1, Date time2) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Query query = session.createQuery(" from Users a, OrderList b where a.userId=b.users.userId "
                + "and b.orderTime >=:time1 and b.orderTime <=:time2 ");
        query.setDate("time1", time1);
        query.setDate("time2", time2);
        List<Object[]> list = (List<Object[]>) query.list();
        session.getTransaction().commit();
        session.close();
        ArrayList<Test> list1 = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            Object[] row = list.get(i);
            //  System.out.println(((Users) row[0]).getUserName() + "\t" + ((OrderList) row[1]).getOrderTime() + "\t");
            Test test = new Test((Users) row[0], (OrderList) row[1]);
            list1.add(test);
        }
        return list1;
    }
    
    public List getCustomerByTime() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Query query = session.createQuery(" from Users a,OrderList b,OrderDetails c,Product d where a.userId=b.users.userId and c.product.productId=d.productId and b.orderId=c.orderList.orderId  order by c.orderedQty*d.productPrice desc");
        List<Object[]> list = (List<Object[]>) query.list();
        session.getTransaction().commit();
        session.close();
        ArrayList<ListUtil> list1 = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            Object[] row = list.get(i);
            ListUtil lu = new ListUtil((Users) row[0],(OrderList) row[1], (OrderDetails) row[2], (Product) row[3]);
            list1.add(lu);
        }
        return list1;
    }
}
