package springmvc.model;

public class Store {

	private int store_id;
	private String state;
	private String city;
	private String road_no;
	private String store_license_no;
	public int getStore_id() {
		return store_id;
	}
	public void setStore_id(int store_id) {
		this.store_id = store_id;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getRoad_no() {
		return road_no;
	}
	public void setRoad_no(String road_no) {
		this.road_no = road_no;
	}
	public String getStore_license_no() {
		return store_license_no;
	}
	public void setStore_license_no(String store_license_no) {
		this.store_license_no = store_license_no;
	}
	public Store(int store_id, String state, String city, String road_no, String store_license_no) {
		super();
		this.store_id = store_id;
		this.state = state;
		this.city = city;
		this.road_no = road_no;
		this.store_license_no = store_license_no;
	}
	public Store() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Store [store_id=" + store_id + ", state=" + state + ", city=" + city + ", road_no=" + road_no
				+ ", store_license_no=" + store_license_no + "]";
	}
	
	
}
