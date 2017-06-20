/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao;

import java.util.List;

/**
 *
 * @author nifflers
 */
public interface BaseDao<T> {

    List<T> getAllList();

    void save(T t);

    void update(T t);

    void delete(T t);

    T getList(T t);

}
