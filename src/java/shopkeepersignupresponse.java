/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import vmm.DBLoader;
import vmm.FileUploader;

/**
 *
 * @author harjot
 */
@MultipartConfig
public class shopkeepersignupresponse extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

        PrintWriter out = response.getWriter();

            // write your logic here for signup
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            String phoneno = request.getParameter("phoneno");
            String address = request.getParameter("address");
            String city = request.getParameter("city");

            String absolutepath = request.getServletContext().getRealPath("/myuploads");
            Part filepart = request.getPart("userphoto");
            String filename = FileUploader.savefileonserver(filepart, absolutepath);

            String filepath = "myuploads/" + filename;

            ResultSet rs = DBLoader.executeQuery("select * from shopkeeper");

            
                rs.moveToInsertRow();
                rs.updateString("name", name);
                rs.updateString("password", password);
                rs.updateString("email", email);
                rs.updateString("phoneno", phoneno);
                rs.updateString("address", address);
                rs.updateString("city", city);
                rs.updateString("photo", filepath);
               // String pending = null;
                rs.updateString("status","pending");
                
                rs.insertRow();
                out.println("success");
     
        } 
        catch (Exception e) 
        {
             e.printStackTrace();
        }

    }

}

