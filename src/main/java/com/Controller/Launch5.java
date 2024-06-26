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
@WebServlet ("/deletenote")
public class Launch5 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String note = req.getParameter("note");
		String name = req.getParameter("name");
		
		
		Connection con = ConnectionFactory.getCon();
		UserDao uDao = new UserDao();
		
		
		uDao.deleteNote(note, name, con);
		
		ArrayList<UserData> al = uDao.getnotes(name, con);
		HttpSession s = req.getSession();
		
		s.setAttribute("notes", al);
		s.setAttribute("check", name);
		resp.sendRedirect("home.jsp");
	}

}
