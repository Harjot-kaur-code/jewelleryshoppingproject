

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

@MultipartConfig
public class addproduct extends HttpServlet {

    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try {

            PrintWriter out = response.getWriter();

            String productname = request.getParameter("name");
            String description = request.getParameter("description");
            String price = request.getParameter("price");
            String offerprice = request.getParameter("offerprice");
            String brand = request.getParameter("brand");
            String categoryname = request.getParameter("categoryname");
            
            String skid=request.getSession().getAttribute("skid").toString();

            ResultSet rs = DBLoader.executeQuery("select * from products");


            
               String absolutepath= request.getServletContext().getRealPath("/myuploads");
               Part filepart= request.getPart("myfile");
               String newname=System.currentTimeMillis()+"";
               String filename=FileUploader.savefileonserver(filepart, absolutepath, newname);
               
               String filepath="myuploads/"+filename;
               
               rs.moveToInsertRow();
               rs.updateString("categoryname", categoryname);
               rs.updateString("description", description);
               rs.updateString("photo", filepath);
               rs.updateString("price", price);
               rs.updateString("offerprice",offerprice );
               rs.updateInt("skid",Integer.parseInt(skid) );

               rs.updateString("brand", brand);
               rs.insertRow();
               
               out.println("success");
               
            

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    

}
