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
 
public class Returns extends HttpServlet {
 
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
            String sid = req.getParameter("sid");
            String query = "update books set copies = copies+1 where id = '"+jid+"'";
            String query2 = "Delete from bookreg where student_id = '"+sid+"'";
            st = conn.createStatement();
            st.executeUpdate(query);
            st.executeUpdate(query2);
            out.print("Successfully Returned");
           
       
            
            
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