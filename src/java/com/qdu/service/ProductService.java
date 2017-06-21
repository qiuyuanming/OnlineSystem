/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service;

import com.qdu.dao.ProductDao;
import com.qdu.pojo.Product;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author nifflers
 */
@Service
public class ProductService {

    @Autowired
    private ProductDao productDao;

    //获取所有产品的列表
    public List getProductList() {
        return productDao.getProductList();
    }

    //获取 一个 产品的 具体信息
    public Product getProduct(int productID) {
        return productDao.getProduct(productID);
    }

    //增加一个产品
    public void addProduct(Product newProduct) {
        productDao.insert(newProduct);
    }

    //更新一个产品
    public void updateProduct(Product updateProduct) {
        productDao.update(updateProduct);
    }

    //删除一个产品
    public void detelteProduct(int productID) {
        productDao.delete(productID);
    }

}
