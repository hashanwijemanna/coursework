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
@WebServlet("/orderproduct6")
public class orderproduct6 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final String DB_URL = "jdbc:mysql://localhost:3306/coursework";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "hashan123";
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String product_id = "06";
		String full_name = request.getParameter("fname5");
		String email = request.getParameter("mail5");
		String address = request.getParameter("address5");
		String city = request.getParameter("city5");
		String State = request.getParameter("state5");
		String zip = request.getParameter("zip5");
		String name_on_crd = request.getParameter("nameoncrd5");
		String crd_num = request.getParameter("crdnum5");
		String exp_month = request.getParameter("expmonth5");
		String exp_year = request.getParameter("expyear5");
		String cvv = request.getParameter("cvv5");
		String quantity = request.getParameter("quantity5");
		String size = request.getParameter("size5");

        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            // Create database connection
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // Prepare the SQL statement
            String sql = "INSERT INTO orders (product_id,full_name,email,address,city,State,zip,name_on_crd,crd_num,exp_month,exp_year,cvv,quantity,size) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            stmt = conn.prepareStatement(sql);

            // Set the parameters
            
            stmt.setString(1, product_id);		
            stmt.setString(2, full_name);
            stmt.setString(3, email);
            stmt.setString(4, address);
            stmt.setString(5, city);
            stmt.setString(6, State);
            stmt.setString(7, zip);
            stmt.setString(8, name_on_crd);
            stmt.setString(9, crd_num);
            stmt.setString(10, exp_month);
            stmt.setString(11, exp_year);
            stmt.setString(12, cvv);
            stmt.setString(13, quantity);
            stmt.setString(14, size);

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
            response.sendRedirect("login.jsp?success=false");
        } finally {
            // Close the database resources
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
		
		
		
		
	

	


