package com.qdu.controller;

import com.qdu.service.OrderService;
import java.sql.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/orderlist")
public class OrderController {

    @Autowired
    private OrderService service;

    //根据日期显示用户
    @RequestMapping(value = "/showAllUsers")
    public String showAllUsers(Date time1, Date time2, ModelMap map) {
        map.addAttribute("List", service.getUserListbyTime(time1, time2));
        return "result";
    }

    @RequestMapping(value = "/show")
    public String show(Date time1, Date time2,ModelMap map) {
        map.addAttribute("map", service.getCustomerByTime(time1, time2));
        return "cusresult";
    }
    

}
