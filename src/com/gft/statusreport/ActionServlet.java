package com.gft.statusreport;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ActionServlet
 */
public class ActionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ActionServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("index.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AbstractBO bo = (AbstractBO)getBusinessObject(request);
		
		bo.setParams(new HashMap(request.getParameterMap()));
		
		String page = bo.mainLogic();
		
		Map<String, String[]> map = bo.getParams();
		
		for(Entry<String, String[]> entry : map.entrySet()){
		  request.setAttribute(entry.getKey(), entry.getValue()[0]);
		}
		
		request.getRequestDispatcher(page).forward(request,  response);
	}


	private  Object getBusinessObject(HttpServletRequest request) throws ServletException {
		String bo = request.getRequestURI();
		bo = bo.replaceAll("/StatusReport/", "").replaceAll("\\.bo", "");
		Object obj = null;
		try {
			 obj = Class.forName("com.gft.statusreport."+bo).newInstance();
		} catch (Exception e) {
			throw new ServletException(e.getMessage());
		}
		
		return obj;
	}
	
}
