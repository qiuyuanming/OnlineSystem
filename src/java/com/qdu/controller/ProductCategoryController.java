/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.controller;

import com.qdu.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author nifflers
 */
@Controller
@RequestMapping(value = "/productcategory")
public class ProductCategoryController {
    
    @Autowired
    private ProductService service;
    
    //查看所有的产品分类
    @RequestMapping(value = "/showAllProductCategory")
    public String showAllProductcagory(ModelMap map){
        map.addAttribute("productCategory",service.getProductList());
        return "productCategoryList"; //对应 productCategoryList.jsp文件  其余同理类似。
    }
    
    //编辑产品分类
    @RequestMapping(value = "/forEditProductCategory")
    public String editProductCategory(int productCategoryId, ModelMap map){
        map.addAttribute("producrCategory",service.getProduct(productCategoryId));
        return "editProductList";
    }
    
    //删除产品分类
    @RequestMapping(value = "/deleteProductCategory")
    public String deleteProductCategory(int productCategoryId){
        service.detelteProduct(productCategoryId);
        return "productCategoryList";
    }
    
    //这里应该还有增加的  稍后
    
}
