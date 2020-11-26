package springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.jdbc.core.RowMapper;

import springmvc.model.Store;

public class rowMapperImpStore implements RowMapper<Store>{

	public Store mapRow(ResultSet rs, int rowNum) throws SQLException {
		Store s=new Store();
		s.setStore_id(rs.getInt(1));
		s.setState(rs.getString(2));
		s.setCity(rs.getString(3));
		s.setRoad_no(rs.getString(4));
		s.setStore_license_no(rs.getString(5));
		return s;
	}

}
