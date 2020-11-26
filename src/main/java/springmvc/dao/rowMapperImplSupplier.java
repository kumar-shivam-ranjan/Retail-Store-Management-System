package springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import springmvc.model.Supplier;

public class rowMapperImplSupplier implements RowMapper<Supplier> {

	public Supplier mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Supplier s=new Supplier();
		s.setSupplier_id(rs.getInt(1));
		s.setName(rs.getString(2));
		s.setEmail(rs.getString(3));
		s.setDob(rs.getString(4));
		s.setAddress(rs.getString(5));
		s.setPhone(rs.getString(6));
		return s;
				
	}

}
