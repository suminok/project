package com.tim.controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tim.controller.Action;

public class MainSelectAction implements Action  {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String url="/user/main.jsp";

		
		 RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		    dispatcher.forward(request, response);
		  }
		}
