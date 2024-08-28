import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/schedule_added")
public class SeheduleAddServlet extends HttpServlet {
	
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 	String c_name= request.getParameter("course_name");
		 	String c_time= request.getParameter("course_time");
		 	String c_end= request.getParameter("course_end");
		 	String teacher= request.getParameter("teacher_name");
		 	String date= request.getParameter("date");

	        try (Connection con = Database.getConnection()) {
	            String sql = "INSERT INTO course_schedule (course_name, course_time, course_end, teacher_name, date) VALUES (?,?,?,?,?)";
	            PreparedStatement ps = con.prepareStatement(sql);
	            ps.setString(1, c_name);
	            ps.setString(2, c_time);
	            ps.setString(3, c_end);
	            ps.setString(4, teacher);
	            ps.setString(5, date);
	            ps.executeUpdate();
	            
	            response.sendRedirect("schedule.jsp?message=Schedule Successful");
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

}
