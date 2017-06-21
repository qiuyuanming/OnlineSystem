package com.qdu.service;

import com.qdu.dao.ProCateDao;
import java.sql.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProCateService {

    @Autowired
    private ProCateDao pcdaDao;

    public List getProCate(Date time1, Date time2) {
        return pcdaDao.getProCate(time1, time2);
    }
}
