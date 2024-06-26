package com.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import com.ConnectionFactory.ConnectionFactory;
import com.Dao.UserDao;
import com.Entity.UserData;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/Login")
public class Launch2 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("uname");
		String pass = req.getParameter("upass");
		
		Connection con = ConnectionFactory.getCon();
		UserDao uDao = new UserDao();
		
		String res = uDao.login(name, pass, con);
		ArrayList<UserData> al = uDao.getnotes(name, con);
		HttpSession s = req.getSession();
		
		if(res.equals("logined"))
		{
			s.setAttribute("note", al);
			s.setAttribute("check", name);
			resp.sendRedirect("home.jsp");
		}
		else
		{
			resp.sendRedirect("login.jsp");
		}
	}
}
