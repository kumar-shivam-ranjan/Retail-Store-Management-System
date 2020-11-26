package springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import springmvc.model.Admin;

public class rowMapperImplAdmin implements RowMapper<Admin>{

	public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {

				Admin admin=new Admin();
				admin.setAdmin_id(rs.getInt(1));
				admin.setName(rs.getString(2));
				admin.setEmail(rs.getString(3));
				admin.setContact(rs.getString(4));
				admin.setPassword(rs.getString(5));
				admin.setAddress(rs.getString(6));
				return admin;
	
	}
	
	

}
