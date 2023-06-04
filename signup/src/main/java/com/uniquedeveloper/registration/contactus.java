package com.uniquedeveloper.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class orderProduct1
 */
@WebServlet("/contactus")
public class contactus extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final String DB_URL = "jdbc:mysql://localhost:3306/coursework";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "hashan123";
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("cname");
		String email = request.getParameter("cemail");
		String message = request.getParameter("cmessage");
		

        Connection connn = null;
        PreparedStatement stmt = null;
        try {
            // Create database connection
            connn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // Prepare the SQL statement
            String sql = "INSERT INTO messages (name,email,message) VALUES (?,?,?)";
            stmt = connn.prepareStatement(sql);

            // Set the parameters
            
            stmt.setString(1, name);		
            stmt.setString(2, email);
            stmt.setString(3, message);
            

            // Execute the query
            int rowsInserted = stmt.executeUpdate();

            if (rowsInserted > 0) {
                // Redirect back to the form with a success message
                response.sendRedirect("index.jsp?success=true");
            } else {
                // Redirect back to the form with an error message
                response.sendRedirect("index.jsp?success=false");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Redirect back to the form with an error message
            response.sendRedirect("index.jsp?success=false");
        } finally {
            // Close the database resources
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connn != null) {
                try {
                    connn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
		
		
		
		
	

	


