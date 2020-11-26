package springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import springmvc.model.Cart;

public class rowMapperImplCart implements RowMapper<Cart> {

	public Cart mapRow(ResultSet rs, int rowNum) throws SQLException {
		Cart c=new Cart();
		c.setCart_id(rs.getInt(1));
		c.setEmail(rs.getString(2));
		c.setProduct_id(rs.getInt(3));
		c.setQuantity(rs.getInt(4));
		c.setTotal_price(rs.getInt(5));
		return c;
		
	}

}
