package com.tim.controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.owner.db.OwnerBean;
import com.owner.db.OwnerDAO;
import com.tim.controller.Action;

public class OwJoinAction implements Action {

	  @Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String url = "user/ow_login.jsp"; 
	    
	    HttpSession session = request.getSession();
	    
	    OwnerBean ownerBean = new OwnerBean();
	    
	    
	    ownerBean.setOw_id(request.getParameter("ow_id"));
	    ownerBean.setOw_name(request.getParameter("ow_name"));
	    ownerBean.setOw_pwd(request.getParameter("ow_pwd"));
	    ownerBean.setOw_pwd_ck(request.getParameter("ow_pwd_ck"));
	    ownerBean.setOw_phon(request.getParameter("ow_phon"));  
	    ownerBean.setOw_addr(request.getParameter("ow_addr"));  
	    
	    session.setAttribute("ow_id", request.getParameter("ow_id"));    
	    
	    OwnerDAO ownerDAO = OwnerDAO.getInstance();
	    ownerDAO.insertOwner(ownerBean);

	    
	    RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	    dispatcher.forward(request, response);
	  }
	}
