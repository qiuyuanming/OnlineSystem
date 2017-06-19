package com.qdu.listUtil;

import com.qdu.pojo.OrderDetails;
import com.qdu.pojo.OrderList;
import com.qdu.pojo.Product;
import com.qdu.pojo.Users;

public class ListUtil {

    private Users users;
    private OrderList orderlist;
    private Product product;

    private OrderDetails orderDetails;

    public ListUtil(Users users, OrderList orderlist, OrderDetails orderDetails, Product product) {
        this.users = users;
        this.orderlist = orderlist;
        this.orderDetails = orderDetails;
        this.product = product;

    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public OrderList getOrderlist() {
        return orderlist;
    }

    public void setOrderlist(OrderList orderlist) {
        this.orderlist = orderlist;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public OrderDetails getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(OrderDetails orderDetails) {
        this.orderDetails = orderDetails;
    }

}
