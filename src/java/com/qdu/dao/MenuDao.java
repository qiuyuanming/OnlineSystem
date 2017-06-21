package com.qdu.dao;

import com.qdu.pojo.*;
import com.qdu.pojo.Menu;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MenuDao {

    @Autowired
    private SessionFactory sessionFactory;

    public int insert(Menu newMenu) {
        try {
            Session session = sessionFactory.openSession();
            session.beginTransaction();
            session.save(newMenu);
            session.getTransaction().commit();
            session.close();
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public void update(Menu updatedMenu) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(updatedMenu);
        session.getTransaction().commit();
        session.close();
    }

    public void delete(int menuId) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Object menu = session.get(Menu.class, menuId);
        session.delete(menu);
        session.getTransaction().commit();
        session.close();
    }

    public List getMenuList() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Query query = session.createQuery("from Menu");
        List list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }

    public Menu getMenu(int menuId) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Menu menu = (Menu) session.get(Menu.class, menuId);
        session.getTransaction().commit();
        session.close();
        return menu;
    }
}
