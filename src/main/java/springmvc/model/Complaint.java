package springmvc.model;

public class Complaint {
	private int complaint_id;
	private int product_id;
	private String desc;
	private String complaint_date;
	private String customer_email;
	public int getComplaint_id() {
		return complaint_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getComplaint_date() {
		return complaint_date;
	}
	public void setComplaint_date(String complaint_date) {
		this.complaint_date = complaint_date;
	}
	public String getCustomer_email() {
		return customer_email;
	}
	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}
	public void setComplaint_id(int complaint_id) {
		this.complaint_id = complaint_id;
	}
	@Override
	public String toString() {
		return "Complaint [complaint_id=" + complaint_id + ", product_id=" + product_id + ", desc=" + desc
				+ ", complaint_date=" + complaint_date + ", customer_email=" + customer_email + "]";
	}
	public Complaint(int complaint_id, int product_id, String desc, String complaint_date, String customer_email) {
		super();
		this.complaint_id = complaint_id;
		this.product_id = product_id;
		this.desc = desc;
		this.complaint_date = complaint_date;
		this.customer_email = customer_email;
	}
	public Complaint() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
