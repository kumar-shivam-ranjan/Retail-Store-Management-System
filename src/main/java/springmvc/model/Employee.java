package springmvc.model;

public class Employee {
	
	private int id;
	private String name;
	private String email;
	private String joining_date;
	private int store_id;
	private int salary;
	private String phone;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getJoining_date() {
		return joining_date;
	}
	public void setJoining_date(String joining_date) {
		this.joining_date = joining_date;
	}
	public int getStore_id() {
		return store_id;
	}
	public void setStore_id(int store_id) {
		this.store_id = store_id;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Employee(int id, String name, String email, String joining_date, int store_id, int salary, String phone) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.joining_date = joining_date;
		this.store_id = store_id;
		this.salary = salary;
		this.phone = phone;
	}
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", email=" + email + ", joining_date=" + joining_date
				+ ", store_id=" + store_id + ", salary=" + salary + ", phone=" + phone + "]";
	}
	
	
	
	
	
	
	
}
