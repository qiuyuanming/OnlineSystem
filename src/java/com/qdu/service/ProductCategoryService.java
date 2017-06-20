/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service;

import com.qdu.dao.ProductCategoryDao;
import com.qdu.pojo.ProductCategory;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author nifflers
 */
@Service
public class ProductCategoryService {
     @Autowired
     private ProductCategoryDao productCategoryDao;
     
     //获取所有分类的列表
     public List getProductCategoryList(){
         return productCategoryDao.getProductCategoryList();
     }
     
     //这是选择某一个分类
     public ProductCategory getProductCategory(int productCategoryId){
         return productCategoryDao.getProductCategory(productCategoryId);
     }

     //增加产品分类
     public void addProductCategory(ProductCategory newProductCategory){
         productCategoryDao.insertProductCategory(newProductCategory);
     }
     
     //修改产品分类
     public void updateProductCategory(ProductCategory updateProductCategory){
         productCategoryDao.updateProductCategory(updateProductCategory);
     }
     
     //删除产品分类
     public void deleteProductCategory(int productCategoryId){
         productCategoryDao.deleteProductCategory(productCategoryId);
     }
     
     
     
     
     
}
