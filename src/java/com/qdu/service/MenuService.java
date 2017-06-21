package com.qdu.service;

import com.qdu.dao.MenuDao;
import com.qdu.pojo.Menu;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenuService {

    @Autowired
    private MenuDao menuDao;

    public List getMenuList() {
        return menuDao.getMenuList();
    }

    public Menu getMenu(int menuId) {
        return menuDao.getMenu(menuId);
    }

    public int addMenu(Menu newMenu) {
        return menuDao.insert(newMenu);
    }

    public void editMenu(Menu updatedMenu) {
        menuDao.update(updatedMenu);
    }

    public void deleteMenu(int menuId) {
        menuDao.delete(menuId);
    }
}
