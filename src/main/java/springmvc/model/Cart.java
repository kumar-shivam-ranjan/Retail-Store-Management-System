package springmvc.model;
public class Cart {
	
	private int cart_id;
	private String email;
	private int product_id;
	private int quantity;
	private int total_price;
	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	@Override
	public String toString() {
		return "Cart [cart_id=" + cart_id + ", email=" + email + ", product_id=" + product_id + ", quantity=" + quantity
				+ ", total_price=" + total_price + "]";
	}
	public Cart(int cart_id, String email, int product_id, int quantity, int total_price) {
		super();
		this.cart_id = cart_id;
		this.email = email;
		this.product_id = product_id;
		this.quantity = quantity;
		this.total_price = total_price;
	}
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
