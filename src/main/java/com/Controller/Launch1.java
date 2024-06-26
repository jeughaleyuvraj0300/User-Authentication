package com.Controller;

import java.io.IOException;
import java.sql.Connection;

import com.ConnectionFactory.ConnectionFactory;
import com.Dao.UserDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/signup")
public class Launch1 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("uname");
		String password = req.getParameter("upass");
		String email = req.getParameter("uemail");
		String dob = req.getParameter("udob");
		
		Connection con = ConnectionFactory.getCon();
		UserDao uDao = new UserDao();
		
		String res=uDao.signup(name, password, email, dob, con);
		
		if(res.equals("inserted"))
		{
			
			resp.sendRedirect("login.jsp");
		}
		else
		{
			resp.sendRedirect("login.jsp");
		}
	}
}
