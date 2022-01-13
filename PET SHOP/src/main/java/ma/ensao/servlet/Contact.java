package ma.ensao.servlet;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import ma.ensao.DAO.ConnectionDB;

/**
 * Servlet implementation class Contact
 */
public class Contact extends HttpServlet {
	private SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	private Date date=new Date();
	ConnectionDB condb = new ConnectionDB();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contact() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String msg=request.getParameter("msg");
		String company=request.getParameter("company");
		
		String insertQuery="insert into contact (name,email,phone,company,msg,date) values ( ? , ? , ? , ? , ?,?)";
		
		try {
			
			PreparedStatement preparedStmt = condb.getConnectionDB().prepareStatement(insertQuery);
			preparedStmt.setString(1,name);
			preparedStmt.setString(2,email);
			preparedStmt.setString(3,phone);
			preparedStmt.setString(4,company);
			preparedStmt.setString(5,msg);
			preparedStmt.setString(6,dateFormat.format(date));
			preparedStmt.executeUpdate();
			
			request.setAttribute("msgSent",true);
			
			request.getRequestDispatcher("contact.jsp").forward(request, response);
			
		} catch (SQLException | ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		

		
	}

}
