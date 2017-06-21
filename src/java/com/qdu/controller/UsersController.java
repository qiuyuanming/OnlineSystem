package com.qdu.controller;

import com.qdu.pojo.Users;
import com.qdu.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/users")
public class UsersController {

    @Autowired
    private UsersService service;

    //查看所有用户
    @RequestMapping(value = "/showAllUsers")
    public String showAllUsers(ModelMap map) {
        map.addAttribute("uList", service.getUserList());
        return "userList";
    }

    @RequestMapping(value = "/viewUser")
    public String viewUser(String userId, ModelMap map) {
        map.addAttribute("user", service.getUser(userId));
        return "userInfo";
    }

    //编辑用户
    @RequestMapping(value = "/forEditUser")
    public String forEditUser(String userId, ModelMap map) {
        map.addAttribute("user", service.getUser(userId));
        return "editUser";
    }

    @RequestMapping(value = "/editUser")
    public String editUser(Users user, ModelMap map) {
        System.out.println("----------------"+user.getUserPassword());
        System.out.println(user.getUserId());
        service.editUser(user);
        map.addAttribute("uList", service.getUserList());
        return "userList";
    }

    //编辑用户个人信息
    @RequestMapping(value = "/forEditInfo")
    public String forEditInfo(String userId, ModelMap map) {
        map.addAttribute("user", service.getUser(userId));
        return "editInfo";
    }

    @RequestMapping(value = "/editInfo")
    public String editInfo(Users user, ModelMap map) {
        int row = service.editInfo(user);
        if (row != 0) {
            map.addAttribute("msg", "个人信息修改成功");
        } else {
            map.addAttribute("msg", "修改失败，请检查信息");
        }
        return "editInfo";
    }

    //删除用户
    @RequestMapping(value = "/deleteUser")
    public String deleteUser(String userId) {
        service.deleteUser(userId);
        return "userList";
    }

    //添加用户
    @RequestMapping(value = "/forAddUser")
    public String forAddUser() {
        return "addUser";
    }

    @RequestMapping(value = "/addUser")
    public String addUser(Users user, ModelMap map) {
        int row = service.addUser(user);
        if (row != 0) {
            map.addAttribute("uList", service.getUserList());
            return "userList";
        } else {
            map.addAttribute("msg", "编号已存在，请重新输入编号");
            return "addUser";
        }
    }

    //用户登录
    @RequestMapping(value = "/login.do")
    public String validateLogin(String userId, String password, ModelMap map) {
        Users user = service.validateUser(userId, password);
        if (user != null) {
            map.addAttribute("user", user);
            return "loginSuccess";
        } else {
            return "loginFail";
        }
    }

    //用户注册
    @RequestMapping(value = "/register.do", method = RequestMethod.POST)
    public String register(Users newUser, ModelMap map) {
        if (service.registerUser(newUser)) {
            map.addAttribute("msg", "注册成功，请转到<a href='javascript:history.go(-2);'>登录页面</a>登录！");
        } else {
            map.addAttribute("msg", "注册失败，该学号已经注册，请<a href='javascript:history.back();'>返回</a>重试！");
        }
        return "registerResult"; //注册完跳转到registerResult页面
    }

}
