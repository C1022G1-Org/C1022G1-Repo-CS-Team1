package controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "LoginServlet",urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bia","root","Khai@123456");
            String user = request.getParameter("user");
            String pass = request.getParameter("pass");
            PreparedStatement ps= con.prepareStatement("select ten_kh,pass from customer where ten_kh=? and pass=?");
            ps.setString(1,user);
            ps.setString(2,pass);
            ResultSet rs= ps.executeQuery();
            if(rs.next()){
                RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
                rd.forward(request,response);
            }else {
                System.out.println("<font color=red size=18> Login Failed!!<br>");
                System.out.println("<a href=/index/login.jsp> Try Again!!</a>");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
