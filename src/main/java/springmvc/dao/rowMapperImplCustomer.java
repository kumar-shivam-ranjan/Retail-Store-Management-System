package springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import springmvc.model.Customer;

public class rowMapperImplCustomer implements RowMapper<Customer> {

	public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
		Customer c=new Customer();
		c.setId(rs.getInt(1));
		c.setName(rs.getString(2));
		c.setEmail(rs.getString(3));
		c.setPassword(rs.getString(4));
		c.setGender(rs.getString(5));
		c.setDob(rs.getString(6));
		c.setAddress(rs.getString(7));
		c.setPhone(rs.getString(8));
		return c;
	}

}
