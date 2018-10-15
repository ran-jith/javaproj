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
 
public class Issue extends HttpServlet {
 
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
            String jid = req.getParameter("bid");
            int jcopy = Integer.parseInt(req.getParameter("acopy"));
            String jname = req.getParameter("sname");
            String rjdate = req.getParameter("rdate");
            String ijdate = req.getParameter("idate");


            String query = "Insert into bookreg(student_id,books_id,issue_date,return_date) values('"+jname+"','"+jid+"','"+ijdate+"','"+rjdate+"')";
            st = conn.createStatement();
            st.executeUpdate(query);
            jcopy -=1;
            String query2 = "update books set copies='"+jcopy+"' where id='"+jid+"'";
            st.executeUpdate(query2);
           
       
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