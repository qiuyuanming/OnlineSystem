package com.qdu.service;

import java.util.List;
import com.qdu.dao.OrderListDao;
import java.sql.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService {

    @Autowired
    private OrderListDao orderlistDao;

    public List getUserListbyTime(Date time1, Date time2) {
        return orderlistDao.getUserListByTime(time1, time2);
    }

    public List getCustomerByTime() {
        return orderlistDao.getCustomerByTime();
    }
}
