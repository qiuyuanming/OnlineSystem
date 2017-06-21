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
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
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

    public List getCustomerByTime(Date time1, Date time2) {
        double money = 0;
        String UserName = "";
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Query query = session.createQuery(" from Users a,OrderList b,OrderDetails c,Product d where a.userId=b.users.userId and c.product.productId=d.productId and b.orderId=c.orderList.orderId and b.orderTime >=:time1 and b.orderTime <=:time2");
        query.setDate("time1", time1);
        query.setDate("time2", time2);
        List<Object[]> list = (List<Object[]>) query.list();
        HashMap<String, Double> map = new HashMap();
        session.getTransaction().commit();
        session.close();
        ArrayList<ListUtil> list1 = new ArrayList<>();
        //把查询的4个类加入到List中
        for (int i = 0; i < list.size(); i++) {
            Object[] row = list.get(i);
            ListUtil lu = new ListUtil((Users) row[0], (OrderList) row[1], (OrderDetails) row[2], (Product) row[3]);
            list1.add(lu);
        }
        //在list中基于日期和购买额进行排序
        for (int j = 0; j < list1.size(); j++) {
            money = list1.get(j).getProduct().getProductPrice() * list1.get(j).getOrderDetails().getOrderedQty();
            UserName = list1.get(j).getUsers().getUserName();
            for (int i = j + 1; i < list1.size(); i++) {
                if (UserName.equals(list1.get(i).getUsers().getUserName())) {
                    double money1 = list1.get(i).getProduct().getProductPrice() * list1.get(i).getOrderDetails().getOrderedQty();
                    money = money1 + money;
                }
            }
            map.put(UserName, money);
        }
        //对购买额进行排序
        List<Map.Entry<String, Double>> orderlist = new ArrayList<Map.Entry<String, Double>>(map.entrySet());
        Collections.sort(orderlist, new Comparator<Entry<String, Double>>() {
            @Override
            public int compare(Entry<String, Double> o1, Entry<String, Double> o2) {
                //return o1.getValue().compareTo(o2.getValue());  
                return o2.getValue().compareTo(o1.getValue());
            }
        });
//        for (Map.Entry<String, Double> mapping : orderlist) {
//            System.out.println(mapping.getKey() + ":" + mapping.getValue());
//        }
        return orderlist;

    }
}
