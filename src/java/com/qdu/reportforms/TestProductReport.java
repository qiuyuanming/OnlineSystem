/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.reportforms;

import java.io.IOException;
import java.io.OutputStream;
import jxl.Workbook;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

/**
 *
 * @author nifflers
 */
public class TestProductReport extends ExcelReport {

    @Override
    public void createExcel(OutputStream os) throws WriteException, IOException {
        super.createExcel(os); //To change body of generated methods, choose Tools | Templates.
        WritableWorkbook workbook = Workbook.createWorkbook(os); 
    }
    
}
