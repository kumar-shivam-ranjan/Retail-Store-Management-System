package springmvc.model;

public class Feedback {
	private int feedback_id;
	private String desc;
	private String date;
	private String email;
	public Feedback() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Feedback(int feedback_id, String desc, String date, String email) {
		super();
		this.feedback_id = feedback_id;
		this.desc = desc;
		this.date = date;
		this.email = email;
	}
	@Override
	public String toString() {
		return "Feedback [feedback_id=" + feedback_id + ", desc=" + desc + ", date=" + date + ", email=" + email + "]";
	}
	public int getFeedback_id() {
		return feedback_id;
	}
	public void setFeedback_id(int feedback_id) {
		this.feedback_id = feedback_id;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	

}
