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

    //编辑用户
    @RequestMapping(value = "/forEditUser")
    public String forEditUser(String userId, ModelMap map) {
        map.addAttribute("user", service.getUser(userId));
        return "editUser";
    }

    @RequestMapping(value = "/editUser")
    public String editUser(Users user, ModelMap map) {
        service.editUser(user);
        map.addAttribute("uList", service.getUserList());
        return "userList";
    }

    //删除用户
    @RequestMapping(value = "/deleteUser")
    public String deleteUser(String userId) {
        service.deleteUser(userId);
        return "userList";
    }
//    public String deleteUser(String userId,ModelMap map){
//        service.deleteUser(userId);
//        map.addAttribute("uList",service.getUserList());
//        return "userList";
//    }
    //添加用户

    @RequestMapping(value = "/forAddUser")
    public String forAddUser() {
        return "addUser";
    }

    @RequestMapping(value = "/addUser")
    public String addUser(Users user, ModelMap map) {
        service.addUser(user);
        map.addAttribute("uList", service.getUserList());
        return "userList";
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
