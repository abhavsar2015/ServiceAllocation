/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.filter;


import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class NewFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain filterChain) throws IOException, ServletException {
		HttpServletRequest httpServletRequest = (HttpServletRequest) req;
		HttpServletResponse httpServletResponse = (HttpServletResponse) res;
		HttpSession session = null;
		System.out.println(httpServletRequest.getRequestURI());
		System.out.println(httpServletRequest.getRequestURL());
		System.out.println(httpServletRequest.getSession(false));
		session = httpServletRequest.getSession(false);
		if ("/Filter/".equals(httpServletRequest.getRequestURI())||"/Filter/Login.jsp".equals(httpServletRequest.getRequestURI())) {
			if (session == null) {
				httpServletRequest.getRequestDispatcher("Login.jsp").forward(req, res);
			}else{
				httpServletRequest.getRequestDispatcher("Hello.jsp").forward(req, res);
			}
		}else if ("/Filter/MainServlet".equals(httpServletRequest.getRequestURI())) {
			filterChain.doFilter(httpServletRequest, httpServletResponse);
		} else {
			if(session==null){
				httpServletRequest.getRequestDispatcher("Login.jsp").forward(req, res);
			}else{
				filterChain.doFilter(httpServletRequest, httpServletResponse);
			}
			
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {

	}

}
