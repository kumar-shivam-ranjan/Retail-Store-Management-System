package springmvc.model;

public class Supplier {

	private int supplier_id;
	private String name;
	private String email;
	private String dob;
	private String address;
	private String phone;
	public int getSupplier_id() {
		return supplier_id;
	}
	public void setSupplier_id(int supplier_id) {
		this.supplier_id = supplier_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "Supplier [supplier_id=" + supplier_id + ", name=" + name + ", email=" + email + ", dob=" + dob
				+ ", address=" + address + ", phone=" + phone + "]";
	}
	public Supplier(int supplier_id, String name, String email, String dob, String address, String phone) {
		super();
		this.supplier_id = supplier_id;
		this.name = name;
		this.email = email;
		this.dob = dob;
		this.address = address;
		this.phone = phone;
	}
	public Supplier() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
