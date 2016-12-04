package com.lol.control;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lol.model.Hero;
import com.lol.model.HeroManage;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

public class ShowHeroesServlet extends HttpServlet{
	
	private static final long serialVersionUID=1L;
public ShowHeroesServlet() {		
	}
protected void doGet(HttpServletRequest request,
		             HttpServletResponse response)throws
ServletException,IOException{
   HeroManage manage=new HeroManage();
   List<Hero> heroes=manage.findAll();

   request.setAttribute("heroes",heroes);
   RequestDispatcher dis=request.getRequestDispatcher("/lolVew/heroes.jsp");
   dis.forward(request,response);
   }
   }
