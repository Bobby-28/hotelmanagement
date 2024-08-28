import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/student_register")
public class StudentRegisterServlet extends HttpServlet {

	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 	String name = request.getParameter("name");
	        String password = request.getParameter("password");
	        String email = request.getParameter("email");

	        try (Connection con = Database.getConnection()) {
	            String sql = "INSERT INTO student (name, password, email) VALUES (?, ?, ?)";
	            PreparedStatement ps = con.prepareStatement(sql);
	            ps.setString(1, name);
	            ps.setString(2, password);
	            ps.setString(3, email);
	            ps.executeUpdate();

	            response.sendRedirect("student_login.jsp");
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
}
