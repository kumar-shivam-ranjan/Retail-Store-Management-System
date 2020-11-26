package springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import springmvc.model.Orders;

public class rowMapperImpOrders implements RowMapper<Orders> {

	public Orders mapRow(ResultSet rs, int rowNum) throws SQLException {
		Orders o=new Orders();
		o.setOrder_id(rs.getInt(1));
		o.setEmail(rs.getString(2));
		o.setProduct_id(rs.getInt(3));
		o.setQuantity(rs.getInt(4));
		o.setTotal_price(rs.getInt(5));
		o.setDate(rs.getString(6));
		return o;
	}

}
