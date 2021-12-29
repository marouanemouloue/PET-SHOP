package ma.ensao.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import ma.ensao.bean.User;



public class UserDAO {
	
	public boolean registerUser(User user) throws ClassNotFoundException, SQLException {
		String insertuser = "INSERT INTO user (username, password, email, tel, company, address) VALUES (?,?,?,?,?,?) ";
		
		boolean result = false;
		Connection connection = null;
		
		Class.forName("com.mysql.cj.jdbc.Driver");	
		
		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost:8889/petshopdb", "root","root");
			PreparedStatement preparedStatement = connection.prepareStatement(insertuser);
			preparedStatement.setString(1, user.getName());
			preparedStatement.setString(2, user.getPassword());
			preparedStatement.setString(3, user.getEmail());
			preparedStatement.setString(4, user.getTel());
			preparedStatement.setString(5, user.getCompany());
			preparedStatement.setString(6, user.getAddress());
			
			result = preparedStatement.execute();
			
		}catch(SQLException ex) {
			ex.printStackTrace();
			
		}
		finally {
			connection.close();
		}
				
		return result;
	}
}
