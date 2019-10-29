package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MenuTable;
/**
 * Servlet implementation class MenuTableServlet
 */
@WebServlet("/MenuTableServlet")
public class MenuTableServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//MenuTable hoge =new MenuTable();
		
	    RequestDispatcher dispatcher =
	            request.getRequestDispatcher("menu2.jsp");

	        dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        MenuTable table = new MenuTable(1);
       
        
        request.setAttribute("Table", table); 

        // フォワード
        RequestDispatcher dispatcher = request.getRequestDispatcher("menu2.jsp");
        dispatcher.forward(request, response); // フォワードを行う
	}

}
