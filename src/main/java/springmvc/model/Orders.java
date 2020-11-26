package springmvc.model;


public class Orders {
	private int order_id;
	private String email;
	private int product_id;
	private int quantity;
	private int total_price;
	private String date;
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
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
	public String getDate() {
		return date;
	}
	public void setDate(String d) {
		this.date = d;
	}
	public Orders(int order_id, String email, int product_id, int quantity, int total_price, String date) {
		super();
		this.order_id = order_id;
		this.email = email;
		this.product_id = product_id;
		this.quantity = quantity;
		this.total_price = total_price;
		this.date = date;
	}
	@Override
	public String toString() {
		return "Orders [order_id=" + order_id + ", email=" + email + ", product_id=" + product_id + ", quantity="
				+ quantity + ", total_price=" + total_price + ", date=" + date + "]";
	}
	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
