package cycbersoft.java10.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cycbersoft.java10.util.Path;
import cycbersoft.java10.util.Url;

@WebServlet(urlPatterns = {Path.ERROR_404,Path.ERROR_403})
public class ErrorController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getServletPath();
		switch (action) {
		case Path.ERROR_403: 
			req.getRequestDispatcher(Url.ERROR_403).forward(req, resp);
			break;
		case Path.ERROR_404:
			req.getRequestDispatcher(Url.ERROR_404).forward(req, resp);
				break;
		
		default:
			break;
		}
	}
	
}
