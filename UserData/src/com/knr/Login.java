package com.knr;

import java.io.IOException;

import java.io.PrintWriter;
 
import java.sql.* ;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class First
 */
@WebServlet("/First")
public class Login extends HttpServlet {
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 ConnectionClass con=new ConnectionClass();
		 Connection con1=null;
		 RequestDispatcher rd=null;
int count=0;
		String uname=request.getParameter("user");
		String pass=request.getParameter("pass");
		PrintWriter out=response.getWriter();
 	 try {
		 con1=con.getConnection();
  		 PreparedStatement st1=con1.prepareStatement("select user,password from login");
  		 
 		 ResultSet resultSet=st1.executeQuery();
 		 resultSet.next();
 		 
			 while(resultSet.next()) {
				 String username=resultSet.getString(1);
		 		 String password= resultSet.getString(2); 
		 		 if(uname.equals(username)&&pass.equals(password)){
		 			 count++;
		 			 
		 		 }else {
		 			 count=0;
		 		 }
		
				 
			 }
			  if(count==1){
			    HttpSession session=request.getSession();
			  session.setAttribute("username", uname); session.setMaxInactiveInterval(300);
			  rd=request.getRequestDispatcher("index.jsp");
			  rd.forward(request, response);
			  }else {
			  out.print("please enter valid login data");
			  out.println("<script>alert('please enter valid email/password')</script>");
			  rd=request.getRequestDispatcher("/wronguser.jsp?msg='wrong data'"); rd.forward(request, response);
			  }
			 
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	 
	}
 
	}

	 
	}

 
