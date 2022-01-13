package ma.ensao.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ma.ensao.bean.Products;


public class ProductsDAO {
	ConnectionDB condb = new ConnectionDB();

	String sql;
     

	
	
	public ArrayList<Products> getProductsList() throws ClassNotFoundException, SQLException{

		Connection con = condb.getConnectionDB();
		ArrayList<Products> list = new ArrayList<Products>();
		sql = "SELECT * FROM products";
		PreparedStatement state = con.prepareStatement(sql);
		ResultSet res = state.executeQuery();
		while(res.next()) {
			Products prod = new Products();
			prod.setNom(res.getString("nom"));
			prod.setPrix(res.getFloat("prix"));
			prod.setDetails(res.getString("details"));
			prod.setCategorie(res.getString("categorie"));
			prod.setVentes(res.getInt("ventes"));
			prod.setImage(res.getString("image"));
			prod.setPromotion(res.getInt("promotion"));
			list.add(prod);
			
		}
		return list;
		
	
	};
	public ArrayList<Products> getProductsByName(String nom) throws ClassNotFoundException, SQLException{

		ArrayList<Products> list = new ArrayList<Products>();

		Connection con = condb.getConnectionDB();
		PreparedStatement state = con.prepareStatement("SELECT * FROM products");
		ResultSet res = state.executeQuery();
		while(res.next()) {
			
			if(res.getString("nom").contains(nom)) {
				Products prod = new Products();
			prod.setNom(res.getString("nom"));
			prod.setPrix(res.getFloat("prix"));
			prod.setDetails(res.getString("details"));
			prod.setCategorie(res.getString("categorie"));
			prod.setVentes(res.getInt("ventes"));
			prod.setImage(res.getString("image"));
			prod.setPromotion(res.getInt("promotion"));
			list.add(prod);
			}
	
		}
		return list;
		
		
	
	};
	public Products getOneProduct(String name) throws ClassNotFoundException, SQLException{


		Connection con = condb.getConnectionDB();
		PreparedStatement state = con.prepareStatement("SELECT * FROM products WHERE nom = ?");
		state.setString(1, name);
		ResultSet res = state.executeQuery();
		while(res.next()) {
			
			
				Products prod = new Products();
			prod.setNom(res.getString("nom"));
			prod.setPrix(res.getFloat("prix"));
			prod.setDetails(res.getString("details"));
			prod.setCategorie(res.getString("categorie"));
			prod.setVentes(res.getInt("ventes"));
			prod.setImage(res.getString("image"));
			prod.setPromotion(res.getInt("promotion"));
			return prod;
			}
	
		
		return null;
		
		
	
	};
	public ArrayList<Products>  getProductsByCategory(String nom) throws ClassNotFoundException, SQLException{

		ArrayList<Products> list = new ArrayList<Products>();

		Connection con = condb.getConnectionDB();
		PreparedStatement state = con.prepareStatement("SELECT * FROM products WHERE categorie = ?");
		state.setString(1, nom);
		ResultSet res = state.executeQuery();
		while(res.next()) {
			Products prod = new Products();
			prod.setNom(res.getString("nom"));
			prod.setPrix(res.getFloat("prix"));
			prod.setDetails(res.getString("details"));
			prod.setCategorie(res.getString("categorie"));
			prod.setVentes(res.getInt("ventes"));
			prod.setImage(res.getString("image"));
			prod.setPromotion(res.getInt("promotion"));
			list.add(prod);
	
		}
		return list;
		
		
	
	};
}