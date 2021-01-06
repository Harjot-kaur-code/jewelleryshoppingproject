
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vmm.DBLoader;

public class addratings extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            PrintWriter out = response.getWriter();

            String pid = request.getParameter("pid");
            String review = request.getParameter("review");
            String rating = request.getParameter("rating");
            if (request.getSession().getAttribute("username") != null) {
                String username = request.getSession().getAttribute("username").toString();

                ResultSet rs = DBLoader.executeQuery("select * from ratings");
                rs.next();
                rs.moveToInsertRow();
                rs.updateInt("pid", Integer.parseInt(pid));
                rs.updateInt("rating", Integer.parseInt(rating));
                rs.updateString("review", review);
                rs.updateString("username", username);
                rs.insertRow();
                out.println("success");

            } else {
                out.println("notloggedin");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
