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
 
public class AddBook extends HttpServlet {
 
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "library";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "password123";
 
        Statement st;
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url + dbName, userName, password);
            System.out.println("Connected!");
            String jname = req.getParameter("bname");
            String jauthor = req.getParameter("bauthor");
            String jdate = req.getParameter("bdate");
            int jcopy = Integer.parseInt(req.getParameter("bnum"));
            String query = "Insert into books(Name,Author,Year,Copies) values('"+jname+"','"+jauthor+"','"+jdate+"','"+jcopy+"')";
            st = conn.createStatement();
            st.executeUpdate(query);
            
           
       
            RequestDispatcher view = req.getRequestDispatcher("/searchv.jsp");
            view.forward(req, res);
            conn.close();
            System.out.println("Disconnected!");
        } catch (IOException | ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException | ServletException e) {
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