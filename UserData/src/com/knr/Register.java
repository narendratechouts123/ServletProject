package com.knr;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public Connection con=null;
	ConnectionClass c=new ConnectionClass();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String name=request.getParameter("name");
String userName=request.getParameter("user");
String password=request.getParameter("pass");
String qualification=request.getParameter("qual");
 
		PrintWriter out=response.getWriter();
		out.print(name);
		 try {
			con=c.getConnection();
			out.print(con);
		 PreparedStatement st=con.prepareStatement("insert into register(name,username,password,qualification) values(?,?,?,?)");
		 PreparedStatement st1=con.prepareStatement("insert into login(user,password) values(?,?)");
		 st.setString(1,name);
		 st.setString(2,userName);
		 st.setString(3, password);
		 st.setString(4, qualification);
		 st1.setString(1, userName);
		 st1.setString(2, password);
		 int no=st.executeUpdate();
		 int no1=st1.executeUpdate();
		 RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			if(no==1&&no1==1) {
				  
				 rd.forward(request, response);
			}else {
				out.print("not");
			}
		
		} catch (Exception e) {
		 out.println("Connection not established"+e);
		}
	}

}
