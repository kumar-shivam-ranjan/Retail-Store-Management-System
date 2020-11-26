package springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import springmvc.model.Complaint;

public class rowMapperImplComplaint implements RowMapper<Complaint> {

	public Complaint mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Complaint c=new Complaint();
		c.setComplaint_id(rs.getInt(1));
		c.setProduct_id(rs.getInt(2));
		c.setDesc(rs.getString(3));
		c.setComplaint_date(rs.getString(4));
		c.setCustomer_email(rs.getString(5));
		return c;
	}
	

}
