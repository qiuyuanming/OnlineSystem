package com.qdu.dao;

import com.qdu.pojo.Users;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UsersDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void insert(Users newUser) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(newUser);
        session.getTransaction().commit();
        session.close();
    }

    public void update(Users updatedUser) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(updatedUser);
        session.getTransaction().commit();
        session.close();
    }

    public void delete(String userId) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Object user = session.get(Users.class, userId);
        session.delete(user);
        session.getTransaction().commit();
        session.close();
    }

    public Users getUser(String userId) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Users user = (Users) session.get(Users.class, userId);
        session.getTransaction().commit();
        session.close();
        return user;
    }

    public List getUserList() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Query query = session.createQuery("from Users");
        List list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }
}
