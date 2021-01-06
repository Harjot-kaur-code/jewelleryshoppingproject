
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vmm.DBLoader;

/**
 *
 * @author harjot
 */
@MultipartConfig
public class changestatus extends HttpServlet {

    

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        try
    {
        PrintWriter out = response.getWriter();
        String skid = request.getParameter("skid");    
        String status = request.getParameter("status");
        
        ResultSet rs = DBLoader.executeQuery("select * from shopkeeper where skid='" + skid +"'");
        rs.next();
        rs.updateString("status", status);
        rs.updateRow();
        out.println("success");
         
    }
    catch (Exception e) {
        e.printStackTrace();
        }    
    }

  
   
}
