
package com.qdu.listUtil;

import com.qdu.pojo.Product;
import com.qdu.pojo.ProductCategory;


public class ProCateHelp {
    private Product product;
    private ProductCategory pc;

    public ProCateHelp(Product product, ProductCategory pc) {
        this.product = product;
        this.pc = pc;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public ProductCategory getPc() {
        return pc;
    }

    public void setPc(ProductCategory pc) {
        this.pc = pc;
    }
    
}
