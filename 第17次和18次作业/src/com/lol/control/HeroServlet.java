package com.lol.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lol.model.Hero;
import com.lol.model.HeroManage;
import com.sun.net.httpserver.HttpServer;

public class HeroServlet extends HttpServlet{
	private static final long serialVersionUID=1L;
	

	public HeroServlet() {
		super();
	}
	protected void doGet(HttpServletRequest request,
			             HttpServletResponse response)throws
	ServletException,IOException{
		HeroManage manage=new HeroManage();
		int id=Integer.parseInt(request.getParameter("id"));
		String isChange=
				request.getParameter("is_change");
		String directPage="";
		Hero hero=manage.findOne(id);
		request.setAttribute("hero", hero);
		if(isChange !=null){
			directPage="/lolView/update.jsp";
		}else{
			directPage="/lolView/hero.jsp";
		}
		RequestDispatcher dis=request.getRequestDispatcher(directPage);
		dis.forward(request, response);
		
	}
	
	protected void dopost(HttpServletRequest request,
			              HttpServletResponse response)throws
	ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String idStr=request.getParameter("id");
		HeroManage manage =new HeroManage();
		Hero hero=new Hero();
		hero.setName(request.getParameter("name"));
		hero.setNickName(request.getParameter("nickName"));
		hero.setAvatar(request.getParameter("avatar"));
		hero.setImage(request.getParameter("image"));
		hero.setDesc(request.getParameter("desc"));
		String info;
		if(idStr==null){
			manage.add(hero);
			info="英雄已经成功添加!";
		}else {
			int id=Integer.parseInt(idStr);
			hero.setId(id);
			manage.modify(hero);
			info="英雄已成功修改";
		}
		request.setAttribute("info", info);
		request.setAttribute("hero", hero);
		RequestDispatcher dis=request.getRequestDispatcher("/lolView/hero.jsp");
		dis.forward(request, response);
	}
	}
	
	
	
	
	
	
	
	
	
	
	


