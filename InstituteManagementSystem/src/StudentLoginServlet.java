import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/student_login")
public class StudentLoginServlet extends HttpServlet {
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        String name = request.getParameter("name");
	        String password = request.getParameter("password");

	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/institute", "root", "aditya(2003)");
	            PreparedStatement ps = con.prepareStatement("SELECT s_id FROM student WHERE name=? AND password=?");
	            ps.setString(1, name);
	            ps.setString(2, password);
	            ResultSet rs = ps.executeQuery();

	            if (rs.next()) {
	                int userId = rs.getInt("s_id");
	                HttpSession session = request.getSession();
	                session.setAttribute("name", name);
	                response.sendRedirect("select.jsp");
	            } else {
	                response.sendRedirect("student_login.jsp?error=Invalid username or password");
	            }   
	            response.sendRedirect("select.jsp");       
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
}
