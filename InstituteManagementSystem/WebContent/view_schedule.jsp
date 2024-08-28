<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bookings</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            padding: 20px;
        }
        h2, h3 {
            color: #333;
            text-align: center;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table th, table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        table th {
            background-color: #f2f2f2;
        }
        .btn {
            display: block;
            width: 200px;
            margin: 20px auto;
            text-align: center;
            padding: 10px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .logout {
            position: absolute;
            top: 10px;
            right: 10px;
        }
    </style>
</head>
<body>
    <a href="index.jsp" class="logout">Logout</a> <!-- Logout button -->
    <h2>Bookings</h2>
    <%
        // Retrieve the session, do not create a new one if it doesn't exist
        HttpSession session1 = request.getSession(false);
        
        // If session does not exist or username is not set, redirect to login page
        if (session.getAttribute("date")==null || session.getAttribute("course_name") == null) {
	            response.sendRedirect("entry.jsp");
	            return;
	        }else {
            // Retrieve the username from the session
            String name = (String) session.getAttribute("course_name");
            String date= (String) session.getAttribute("date");
     %>
            // Database connection parameters
     <%
            String url = "jdbc:mysql://localhost:3306/institute";
            String user = "root";
            String password = "aditya(2003)";

            // SQL query to retrieve bookings
            String query = "SELECT course_name, course_time, course_end, teacher_name, date FROM course_schedule WHERE course_name='"+name+"' AND date='"+date+"'";

            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;

            try {
                // Establish the database connection
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(url, user, password);

                // Create statement
                stmt = conn.createStatement();

                // Execute the query
                rs = stmt.executeQuery(query);

    %>
    <table>
        <thead>
            <tr>
                <th>Course Name</th>
                <th>Check Time</th>
                <th>Check Out</th>
                <th>Teacher</th>
                <th>Date</th>
            </tr>
        </thead>
        <tbody>
            <% 
                // Process the result set
                while (rs.next()) {
                    String course_name = rs.getString("course_name");
                    String course_time= rs.getString("course_time");
                    String course_end= rs.getString("course_end");
                    String teacher= rs.getString("teacher_name");
                    Date date1 = rs.getDate("date");
            %>
            <tr>
                <td><%= course_name %></td>
                <td><%= course_time %></td>
                <td><%= course_end %></td>
                <td><%= teacher %></td>
                <td><%= date1 %></td>
            </tr>
            <%
                }
            } catch (Exception e) {
                out.println("<tr><td colspan='6'>Exception: " + e.getMessage() + "</td></tr>");
            } finally {
                // Close resources
                try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
                try { if (stmt != null) stmt.close(); } catch (SQLException e) { /* ignored */ }
                try { if (conn != null) conn.close(); } catch (SQLException e) { /* ignored */ }
            }
            // Close the table tag outside of Java code blocks
            %>
        </tbody>
    </table>
    <a href="entry.jsp" class="btn">Another Schedule</a>
    <% } %> <!-- End of else block for session check -->
</body>
</html>