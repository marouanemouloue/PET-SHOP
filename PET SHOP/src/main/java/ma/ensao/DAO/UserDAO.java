package ma.ensao.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ma.ensao.bean.User;



public class UserDAO {
	static ConnectionDB condb = new ConnectionDB();

	static String sql;
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
	public  ArrayList<User> getUserList() throws ClassNotFoundException, SQLException{

	
		Connection con = condb.getConnectionDB();
		ArrayList<User> list = new ArrayList<User>();
	
		sql = "SELECT * FROM user";
		PreparedStatement state = con.prepareStatement(sql);
		ResultSet res = state.executeQuery();
		while(res.next()) {
			User user = new User();
			user.setName(res.getString("username"));
			user.setEmail(res.getString("email"));
			user.setCompany(res.getString("company"));
			user.setAddress(res.getString("address"));
			user.setPassword(res.getString("password"));
		
		
			list.add(user);
			
		}
		return list;
		
	
	};
}
