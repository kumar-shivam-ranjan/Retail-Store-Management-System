package springmvc.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.REUtil;

import springmvc.model.Customer;

@Repository
public class CustomerDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	public int insert(Customer c)
	{
		String query="insert into customer(name,email,password,gender,dob,address,phone) values(?,?,?,?,?,?,?)";
		try {
			jdbcTemplate.update(query,c.getName(),c.getEmail(),c.getPassword(),c.getGender(),c.getDob(),c.getAddress(),c.getPhone());
			return 1;
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
		
	}
	public int check_for_customer(String email,String password)
	{
		String query="select * from customer where email=? and password=?";
		RowMapper<Customer> rm=new rowMapperImplCustomer();
		
		try {
			Customer c=this.jdbcTemplate.queryForObject(query,rm,email,password);
			return 1;
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
	}
	public List<Customer> allCustomers()
	{
		String query="select * from customer";
		RowMapper<Customer> rm=new rowMapperImplCustomer();
		List<Customer> ans=this.jdbcTemplate.query(query,rm);
		return ans;
	}
	public Customer get_customer_by_email(String email)
	{
		String query="select * from customer where email=?";
		RowMapper<Customer> rm=new rowMapperImplCustomer();
		return this.jdbcTemplate.queryForObject(query,rm,email);
	}
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	public CustomerDao(JdbcTemplate jdbcTemplate) {
		super();
		this.jdbcTemplate = jdbcTemplate;
	}
	public CustomerDao() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int updateCustomerProfile(Customer c) {
	
		String query="update customer set name=?, address=?,phone=? where email=?";
		return this.jdbcTemplate.update(query,c.getName(),c.getAddress(),c.getPhone(),c.getEmail());
		
		
	}
	
	
}
