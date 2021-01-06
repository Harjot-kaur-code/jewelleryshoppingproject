

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vmm.RDBMS_TO_JSON;

/**
 *
 * @author harjot
 */
@MultipartConfig
public class fetchshopkeepers extends HttpServlet {

   
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        try
        {
            PrintWriter out = response.getWriter();
            
            String status = request.getParameter("status");
            String jsondata = new RDBMS_TO_JSON().generateJSON("select * from shopkeeper where status='" +status+"'");
            out.println(jsondata);

        }
    
    catch (Exception e) 
        {
             e.printStackTrace();
        }

    }
}
