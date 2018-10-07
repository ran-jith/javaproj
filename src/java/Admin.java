import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class Admin extends HttpServlet {
 
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
        boolean login = false;
 
        Statement st;
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url + dbName, userName, password);
            System.out.println("Connected!"); 
            String jname = req.getParameter("uname");
            String jpass = req.getParameter("pass");
            String query = "SELECT u_name, pass_wd FROM admin";
            st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);
            
            while(rs.next()){
                String u_name = rs.getString("u_name");
                String pass_wd = rs.getString("pass_wd");

                if(u_name.equals(jname) && pass_wd.equals(jpass)){
                    login = true;
                    out.print("suc");
                }
                System.out.println("Successs");
                
            }
            
            if(login){
                RequestDispatcher view = req.getRequestDispatcher("/admin.jsp");
                view.forward(req, res);
                conn.close();
            }
            else {
                out.println("Error");
        }
            
            
        }
        catch (ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException e) {
            System.out.print(e);
            System.out.print("ff");
            e.printStackTrace();
        }
    }
    
@Override
    public String getServletInfo() {
        return "Short description";
    }
}