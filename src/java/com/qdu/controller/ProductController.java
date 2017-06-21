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
@RequestMapping(value = "/product")
public class ProductController {

    @Autowired
    private ProductService service;

    //查看产品列表
    @RequestMapping(value = "/showAllProducts")
    public String showAllProduct(ModelMap map) {
        map.addAttribute("uList", service.getProductList());// 这里不是addAllAtttibute() 请注意一下。
        return "productList";
    }

    //编辑产品信息
    @RequestMapping(value = "/editProducts")
    public String forEditProduct(int productID, ModelMap map) {
        //map.addAttribute("editProduct",service.updateProduct());
        return "editProduct";
    }

    //删除产品信息
    @RequestMapping(value = "/deleteProducts")
    public String deleteProduct(int productId) {
        service.detelteProduct(productId);
        return "productList";
    }

    //查看某一个产品  的信息：  也就是产品的详细页面
    @RequestMapping(value = "/getProducts")
    public String getProductInfo(int productId){
        service.getProduct(productId);
        return "introduction.jsp";
    }
    
}
