package com.knr;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 

/**
 * Servlet implementation class ForgotPassword
 */
@WebServlet("/forgotpass")
public class ForgotPassword extends HttpServlet {
 ConnectionClass con=new ConnectionClass();
 RequestDispatcher dispach=null;
	PreparedStatement pr=null;
	PreparedStatement pr1=null;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String uname=request.getParameter("user");
		String password=request.getParameter("pass");
		String password1=request.getParameter("pass1");
		RequestDispatcher rd=null;
		RequestDispatcher rd1=null;

try {
	Connection con1=con.getConnection();
	if(password.equals(password1)) {
		pr=  con1.prepareStatement("update register set password=? where username=?");
		pr1=  con1.prepareStatement("update login set password=? where user=?");

		pr.setString(1, password);
		pr.setString(2, uname);
		pr1.setString(1, password);
		pr1.setString(2, uname);
		int no=pr.executeUpdate();
		int no1=pr1.executeUpdate();
		if(no==no1) {
			rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
			
		}else {
			out.print("<script>alert('passwords must be same');</script>");

			rd=request.getRequestDispatcher("ForgotPass.html");
			rd.forward(request, response);
		}
		
		
	}else {
		rd1=request.getRequestDispatcher("ForgotPass.html");
rd1.forward(request, response);
		
	}
	
	
} catch ( Exception e) {
	 System.out.println("enter correct username or password");
}


//	 RequestDispatcher rd=request.getRequestDispatcher("Login.html");
//	 rd.forward(request, response);
	}
 

}
