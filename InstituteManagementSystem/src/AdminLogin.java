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

@WebServlet("/admin")
public class AdminLogin extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        try {
            if (name.equals("admin")&&password.equals("admin123")) {
                HttpSession session = request.getSession();
                session.setAttribute("name", name);
                response.sendRedirect("booking.jsp");
            } else {
                response.sendRedirect("login.jsp?error=Invalid username or password");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
