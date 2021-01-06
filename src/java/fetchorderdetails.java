/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vmm.RDBMS_TO_JSON;

/**
 *
 * @author harjot
 */
public class fetchorderdetails extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        try {
            String oid=request.getParameter("oid");
            PrintWriter out=response.getWriter();
            String jsondata=new RDBMS_TO_JSON().generateJSON("SELECT orderdetails.odid,orderdetails.qty, orderdetails.price,products.name,products.photo FROM orderdetails INNER JOIN products ON orderdetails.pid=products.pid where oid="+oid+"");
            out.println(jsondata);
            
        } catch (Exception e) {
        e.printStackTrace();
        }
    }


}
