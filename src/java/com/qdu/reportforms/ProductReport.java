/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.reportforms;

import java.io.IOException;
import java.io.OutputStream;
import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

/**
 *导出产品列表到Excel表格。
 * 产品的属性
 * @author nifflers
 */
public class ProductReport {
    
    //创建Excel表格
    public void createExcel(OutputStream os) throws WriteException,IOException{
        //创建工作簿
        WritableWorkbook workbook = Workbook.createWorkbook(os);
        //创建新的一页
        WritableSheet sheet = workbook.createSheet("First Sheet", 0);
        
        //创建要显示的内容，创建一个单元格，第一个参数列坐标，第二个参数为行坐标，第三个参数为内容。
        Label school =  new Label(0,0,"school");
        sheet.addCell(school);
        Label professional = new Label(1,0,"professional");
        sheet.addCell(professional);
        Label competitiveness = new Label(2,0,"competitiveness");
        sheet.addCell(competitiveness);
        
        Label tingshua = new Label(0,1,"TingsHua");
        sheet.addCell(tingshua);
        Label computer = new Label(1,1,"Computer");
        sheet.addCell(computer);
        Label high = new Label(2,1,"higer");
      
        workbook.write();
        workbook.close();
        os.close();
        
    }
}
