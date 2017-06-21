package com.qdu.service;

import com.qdu.dao.UsersDao;
import com.qdu.pojo.Users;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UsersService {

    @Autowired
    private UsersDao usersDao;

    public List getUserList() {
        return usersDao.getUserList();
    }

    public Users getUser(String userId) {
        return usersDao.getUser(userId);
    }

    public int addUser(Users newUser) {
        return usersDao.insert(newUser);
    }

    public int editInfo(Users updatedUser) {
        return usersDao.update(updatedUser);
    }

    public void editUser(Users updatedUser) {
        usersDao.update(updatedUser);
    }

    public void deleteUser(String userId) {
        usersDao.delete(userId);
    }

    //验证登录
    public Users validateUser(String userId, String password) {
        Users user = usersDao.getUser(userId);
        if (user != null && user.getUserPassword().equals(password)) {
            return user;
        } else {
            return null;
        }
    }

    //完成注册
    public boolean registerUser(Users newUser) {
        try {
            usersDao.insert(newUser);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
