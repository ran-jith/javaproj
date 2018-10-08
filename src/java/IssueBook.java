import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Date;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class IssueBook extends HttpServlet {
 
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "library";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "root";
 
        Statement st;
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url + dbName, userName, password);
            System.out.println("Connected!");
            int jsid = Integer.parseInt(req.getParameter("sid"));
            int jbkid = Integer.parseInt(req.getParameter("bkid"));
            String jidate = req.getParameter("idate");
            String jrdate = req.getParameter("rdate");
            String jrm = req.getParameter("rm");
            String query = "Insert into bookreg(student_id,books_id,issue_date,return_date,remarks) values('"+jsid+"','"+jbkid+"','"+jidate+"','"+jrdate+"','"+jrm+"')";
            st = conn.createStatement();
            st.executeUpdate(query);
            
           
       
           out.println("Successfully issued");
            conn.close();
            System.out.println("Disconnected!");
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException e) {
            System.out.print(e);
            e.printStackTrace();
        }
    }
 
    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}