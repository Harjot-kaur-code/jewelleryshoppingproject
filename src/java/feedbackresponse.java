
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
public class feedbackresponse extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            PrintWriter out = response.getWriter();

            // write your logic here for signup
            String username = request.getParameter("username");
            // String password = request.getParameter("password");
            String email = request.getParameter("email");
            String phoneno = request.getParameter("phoneno");
            String message = request.getParameter("message");

            ResultSet rs = DBLoader.executeQuery("select * from feedback");

            
            rs.moveToInsertRow();
            rs.updateString("username", username);
            //  rs.updateString("password", password);
            rs.updateString("email", email);
            rs.updateString("phoneno", phoneno);
            rs.updateString("message", message);
            rs.insertRow();
            out.println("success");

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
