package springmvc.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import springmvc.model.Complaint;
import springmvc.model.Product;

@Repository
public class ComplaintDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	public void insert_into_complaint(Complaint c) {
		String q="insert into complaint(product_id,description,complaint_date,customer_email)"
				+ "values(?,?,?,?)";
		this.jdbcTemplate.update(q,c.getProduct_id(),c.getDesc(),c.getComplaint_date(),c.getCustomer_email());
	}
	
	public List<Complaint> show_complaints()
	{
		String q="select * from complaint";
		RowMapper<Complaint> rm=new rowMapperImplComplaint();
		List<Complaint> c=jdbcTemplate.query(q, rm);
		return c;
	}
	
	
}
