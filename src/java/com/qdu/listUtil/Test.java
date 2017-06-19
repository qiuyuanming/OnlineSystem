
package com.qdu.listUtil;

import com.qdu.pojo.OrderList;
import com.qdu.pojo.Users;


public class Test {
    private Users users;
    private OrderList oList;

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public OrderList getoList() {
        return oList;
    }

    public void setoList(OrderList oList) {
        this.oList = oList;
    }

    
    public Test(Users users, OrderList oList) {
        this.users = users;
        this.oList = oList;
    }
    
}
