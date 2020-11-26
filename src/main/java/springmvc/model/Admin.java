package springmvc.model;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class Admin {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int Admin_id;
	private String name;
	private String email;
	private String contact;
	private String password;
	private String address;
	public int getAdmin_id() {
		return Admin_id;
	}
	public void setAdmin_id(int admin_id) {
		Admin_id = admin_id;
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
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Admin [Admin_id=" + Admin_id + ", name=" + name + ", email=" + email + ", contact=" + contact
				+ ", password=" + password + ", address=" + address + "]";
	}
	public Admin(int admin_id, String name, String email, String contact, String password, String address) {
		super();
		Admin_id = admin_id;
		this.name = name;
		this.email = email;
		this.contact = contact;
		this.password = password;
		this.address = address;
	}
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
