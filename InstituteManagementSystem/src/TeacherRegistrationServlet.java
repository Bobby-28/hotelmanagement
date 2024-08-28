import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/teacher_register")
public class TeacherRegistrationServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException , IOException{
		String name= request.getParameter("name");
		String password= request.getParameter("password");
		String course_name= request.getParameter("course_name");
		String email= request.getParameter("email");
		
		try(Connection con = Database.getConnection()) {
			String sql= "INSERT INTO teacher(name, password, course_name, email) VALUES (?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, password);
            ps.setString(3, course_name);
            ps.setString(4, email);
            ps.executeUpdate();
            response.sendRedirect("teacher_login.jsp");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
