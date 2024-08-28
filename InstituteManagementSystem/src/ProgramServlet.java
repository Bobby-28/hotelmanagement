import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import java.sql.*;
import java.io.IOException;

@WebServlet("/course")
public class ProgramServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String program_id= request.getParameter("program_id");
		String program_name= request.getParameter("program_name");
		String teacher= request.getParameter("teacher");
		try(Connection con= Database.getConnection()) {
			String sql= "INSERT INTO program(program_id, program_name, teacher) VALUES(?, ?, ?)";
			PreparedStatement ps= con.prepareStatement(sql);
			 ps.setString(1, program_id);
			 ps.setString(2, program_name);
			 ps.setString(3, teacher);
			 ps.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
