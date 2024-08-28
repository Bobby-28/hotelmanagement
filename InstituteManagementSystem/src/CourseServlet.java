import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CourseServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String course_name= request.getParameter("course_name");
		String teacher= request.getParameter("teacher");
		try(Connection con= Database.getConnection()) {
			String sql= "INSERT INTO course(course_name, teacher) VALUES(?, ?)";
			PreparedStatement ps= con.prepareStatement(sql);
			 ps.setString(1, course_name);
			 ps.setString(2, teacher);
			 ps.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
