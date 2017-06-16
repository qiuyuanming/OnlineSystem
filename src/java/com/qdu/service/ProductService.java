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

    public List getProductList() {
        return productDao.getProductList();
    }

    public Product getProduct(int productID) {
        return productDao.getProduct(productID);
    }

    public void addProduct(Product newProduct) {
        productDao.insert(newProduct);
    }

    public void updateProduct(Product updateProduct) {
        productDao.update(updateProduct);
    }

    public void detelteProduct(int productID) {
        productDao.delete(productID);
    }

}
