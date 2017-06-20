/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service;

import com.qdu.dao.SalesPromotionDao;
import com.qdu.pojo.SalesPromotion;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author nifflers
 */
@Service
public class SalesPromotionService {
     
    @Autowired
     private SalesPromotionDao salesPromotionDao;
     
     //获取所有的促销列表
    public  List getSalesPromotionLiist(){
        return salesPromotionDao.getSalesPromotionList();
    }
    
    //获取一个促销列表
    public SalesPromotion getSalesPromotion(int salesPromotionId){
        return salesPromotionDao.getSalesPromotion(salesPromotionId);
    }
    
    //增加一个促销计划
    public void addSalesPromotionPlan(SalesPromotion salesPromotion){
        salesPromotionDao.insertSalesPromotion(salesPromotion);
    }
    
    //更新一个促销计划
    public void updateSalesPromotionPlan(SalesPromotion updateSP){
        salesPromotionDao.updateSalesPromotion(updateSP);
    }
    
    //删除一个促销计划
    public void deleteSalesPromotionPlan(int salesPromotionId){
        salesPromotionDao.deleteSalesPromotion(salesPromotionId);
    }
    
    
    
    
}
