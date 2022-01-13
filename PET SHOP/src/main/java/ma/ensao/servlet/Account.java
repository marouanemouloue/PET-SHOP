package ma.ensao.servlet;
import ma.ensao.DAO.UserDAO;

import ma.ensao.bean.User;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Account
 */
public class Account extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Account() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		boolean loginConfirm = false;

		String name = request.getParameter("username");
		String password = request.getParameter("password");
		String rememberMe = request.getParameter("rememberMe");
	

		String cookieData = "";
		UserDAO user = new UserDAO();

	    ArrayList<User> users = new ArrayList<User> ();

		for (User usr : users) {
			if (usr.getName().equals(name) && usr.getPassword().equals(password)) {
				cookieData =  name; // cookieData={id_username};
				loginConfirm = true;
			}
		}

		if (loginConfirm) {
			Cookie cookie = new Cookie("cookie", cookieData);
			if (rememberMe != null) {
				cookie.setMaxAge(24 * 60 * 60);
				response.addCookie(cookie);
			} else {
				cookie.setMaxAge(-1);
				response.addCookie(cookie);
			}
			response.sendRedirect("index.jsp");
		} else {
			request.setAttribute("error", true);
			request.getRequestDispatcher("myaccount.jsp").forward(request, response);
		}
	}
}