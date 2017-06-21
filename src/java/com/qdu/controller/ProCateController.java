package com.qdu.controller;

import com.qdu.service.ProCateService;
import java.sql.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/pc")
public class ProCateController {

    @Autowired
    private ProCateService pcService;

    @RequestMapping(value = "/show")
    public String show(Date time1, Date time2, ModelMap map) {
        map.addAttribute("pc", pcService.getProCate(time1, time2));
        return "pcresult";
    }

}
