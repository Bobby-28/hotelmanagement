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

@WebServlet("/course_formal")
public class ScheduleViewFormServlet extends HttpServlet {

	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
		 
		 	String name = request.getParameter("course_name");
	        String date = request.getParameter("date");
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/institute", "root", "aditya(2003)");
	            PreparedStatement ps = con.prepareStatement("SELECT * FROM course_schedule WHERE course_name=? AND date=?");
	            ps.setString(1, name);
	            ps.setString(2, date);
	            ResultSet rs = ps.executeQuery();

	            if (rs.next()) {
	            	HttpSession session = request.getSession(false);
	            	session.setAttribute("course_name",name);	
	            	session.setAttribute("date", date);
	                response.sendRedirect("view_schedule.jsp");
	            } else {
	                response.sendRedirect("entry.jsp?error=Invalid course_name or date");
	            }
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

}
