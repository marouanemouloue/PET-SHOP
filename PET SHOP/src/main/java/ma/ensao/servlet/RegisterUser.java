package ma.ensao.servlet;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ma.ensao.DAO.UserDAO;
import ma.ensao.bean.User;

/**
 * Servlet implementation class RegisterUser
 */
public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	UserDAO userDAO = new UserDAO() ;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = new User();
		user.setName(request.getParameter("username"));
		user.setPassword(getMd5(request.getParameter("password")));
		user.setEmail(request.getParameter("email"));
		user.setTel(request.getParameter("tel"));
		user.setCompany(request.getParameter("company"));
		user.setAddress(request.getParameter("address"));
		
		try {
			
			if(!userDAO.registerUser(user))
				System.out.println("Enregistrement effectuer avec succès ");
		}catch (Exception e) {
			e.printStackTrace();
			/// TODO créer la page de gestion des erreurs 
		}
		
		 // redirection vers l'accueil 
		getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		
		
	}
	
	// method to calculate MD5 hash value
	 private String getMd5(String input)
	    {
	        try {
	  
	            // Static getInstance method is called with hashing MD5
	            MessageDigest md = MessageDigest.getInstance("MD5");
	  
	            // digest() method is called to calculate message digest
	            //  of an input digest() return array of byte
	            byte[] messageDigest = md.digest(input.getBytes());
	  
	            // Convert byte array into signum representation
	            BigInteger no = new BigInteger(1, messageDigest);
	  
	            // Convert message digest into hex value
	            String hashtext = no.toString(16);
	            while (hashtext.length() < 32) {
	                hashtext = "0" + hashtext;
	            }
	            return hashtext;
	        } 
	  
	        // For specifying wrong message digest algorithms
	        catch (NoSuchAlgorithmException e) {
	            throw new RuntimeException(e);
	        }
	    }

}
