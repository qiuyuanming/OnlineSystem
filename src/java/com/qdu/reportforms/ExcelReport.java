/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.reportforms;

import java.io.IOException;
import java.io.OutputStream;
import jxl.Workbook;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

/**
 *
 * @author nifflers
 * 这是处理excel表格的父类
 */
public class ExcelReport {

    public void createExcel(OutputStream os) throws WriteException, IOException {
        //创建工作簿
       // WritableWorkbook workbook = Workbook.createWorkbook(os);
//        //创建新的一页
//        WritableSheet sheet = workbook.createSheet("First Sheet", 0);
//        
//        workbook.write();
//        workbook.close();
//        os.close();
    }
}
