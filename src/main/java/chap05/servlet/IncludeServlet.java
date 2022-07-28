package chap05.servlet;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 0728
public class IncludeServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		req.getRequestDispatcher("/WEB-INF/views/test/body1.jsp").forward(req, resp);
		
	}
}
