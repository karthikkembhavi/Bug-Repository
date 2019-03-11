package database;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import database.DatabaseConnections; 
/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		try 
		{
		//System.out.println("Inside registration page");
		Connection con = DatabaseConnections.initializeDatabase();
		PreparedStatement st = con.prepareStatement("insert into registration values(?, ?, ?, ?)");
		st.setString(1, request.getParameter("name"));
		st.setString(2, request.getParameter("email"));
		st.setString(3, request.getParameter("psw"));
		st.setString(4, request.getParameter("psw_repeat"));
		st.executeUpdate();
		con.close();
		PrintWriter out = response.getWriter(); 
        out.println("<html><body><b>Successfully Inserted"
                    + "</b></body></html>"); 
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
