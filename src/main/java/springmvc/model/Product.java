package springmvc.model;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int product_id;
	private int store_id;
	private String expiry_date;
	private int price;
	private int supplier_id;
	private String category;
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getStore_id() {
		return store_id;
	}
	public void setStore_id(int store_id) {
		this.store_id = store_id;
	}
	public String getExpiry_date() {
		return expiry_date;
	}
	public void setExpiry_date(String expiry_date) {
		this.expiry_date = expiry_date;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getSupplier_id() {
		return supplier_id;
	}
	public void setSupplier_id(int supplier_id) {
		this.supplier_id = supplier_id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "Product [product_id=" + product_id + ", store_id=" + store_id + ", expiry_date=" + expiry_date
				+ ", price=" + price + ", supplier_id=" + supplier_id + ", category=" + category + "]";
	}
	public Product(int product_id, int store_id, String expiry_date, int price, int supplier_id, String category) {
		super();
		this.product_id = product_id;
		this.store_id = store_id;
		this.expiry_date = expiry_date;
		this.price = price;
		this.supplier_id = supplier_id;
		this.category = category;
	}
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
