package ma.ensao.bean;

public class Products {
	private String nom;
	private float prix ;
	private String details;
	private String categorie;
	private int ventes;
	private int promotion;
	private String image;
	public String getNom() {
		return nom;
	}
	public float getPrix() {
		return prix;
	}
	public String getDetails() {
		return details;
	}
	public String getCategorie() {
		return categorie;
	}
	public int getVentes() {
		return ventes;
	}
	public int getPromotion() {
		return promotion;
	}
	public String getImage() {
		return image;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public void setPrix(float prix) {
		this.prix = prix;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}
	public void setVentes(int ventes) {
		this.ventes = ventes;
	}
	public void setPromotion(int promotion) {
		this.promotion = promotion;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
}
