/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.controller;

import com.qdu.service.SalesPromotionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author nifflers
 */
@Controller
@RequestMapping(value = "/salesPromotion")
public class SalesPromotionController {

    @Autowired
    private SalesPromotionService salesPromotionService;

    //查看列表
    @RequestMapping(value = "/showAllSalesPromotion")
    public String showAllSalesPromotion(ModelMap map) {
        map.addAttribute("showSalesPromotion", salesPromotionService.getSalesPromotionLiist());// 这里不是addAllAtttibute() 请注意一下。
        return "showAllSalesPromotion";
    }

    //修改列表
    @RequestMapping(value = "/updateSalesPromotion")
    public String updateSalesPromotion(int salesId, ModelMap map) {
        //map.addAttribute("updateSalesPromotion",salesPromotionService.updateSalesPromotionPlan());
        //map.addAttribute("updateSalesPromotion", salesPromotionService.updateSalesPromotionPlan(salesID));
        return "updateSalesPromotion";
    }
    
    //删除列表
    @RequestMapping(value = "/deleteSalesPromotion")
    public String deleteSalesPromotion(int salesId) {
        salesPromotionService.deleteSalesPromotionPlan(salesId);
        return "deleteSalesPromotion";
    }
}
