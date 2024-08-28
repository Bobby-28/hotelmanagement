import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import java.io.IOException;
import java.sql.*;

@WebServlet("/choose_course")
public class ChooseServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int s_id= Integer.parseInt(request.getParameter("s_id"));
		String name= request.getParameter("name");
		String course_name= request.getParameter("course_name");
		String course_fee= request.getParameter("course_fee");
		try(Connection con= Database.getConnection()) {
			String sql= "INSERT INTO choose_course(s_id, name, course_name, course_fee) VALUES(?,?,?,?)";
			PreparedStatement ps= con.prepareStatement(sql);
			ps.setInt(1, s_id);
			ps.setString(2, name);
			ps.setString(3, course_name);
			ps.setString(4, course_fee);
			ps.executeUpdate();
			
			response.sendRedirect("select.jsp");
			if(course_name.equals("BCA")) {
				//response.sendRedirect("bca_section.jsp");
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
