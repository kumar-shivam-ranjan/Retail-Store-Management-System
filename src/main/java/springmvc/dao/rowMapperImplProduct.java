package springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import springmvc.model.Product;

public class rowMapperImplProduct implements RowMapper<Product>{

	public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
		Product p=new Product();
		p.setProduct_id(rs.getInt(1));
		p.setStore_id(rs.getInt(2));
		p.setExpiry_date(rs.getString(3));
		p.setPrice(rs.getInt(4));
		p.setSupplier_id(rs.getInt(5));
		p.setCategory(rs.getString(6));
		return p;
	}
	

}
