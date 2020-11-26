package springmvc.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import springmvc.model.Orders;

@Repository
public class OrderDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	public int insert(Orders o)
	{
		String query="insert into orders(email,product_id,quantity,total_price,date)"
				+ "values(?,?,?,?,?)";
		try {
			this.jdbcTemplate.update(query,o.getEmail(),o.getProduct_id(),o.getQuantity(),o.getTotal_price(),o.getDate());
			return 1;
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
		
	}
	public void delete_order(int id)
	{
		String query="delete from orders where order_id=?";
		this.jdbcTemplate.update(query,id);
	}
	public List<Orders> show_orders(String email)
	{
		String query="select * from orders where email=?";
		RowMapper<Orders> rm=new rowMapperImpOrders();
		List<Orders> ans=this.jdbcTemplate.query(query,rm,email);
		return ans;
	}
	public List<Orders> show_orders() {
		String query="select * from orders";
		RowMapper<Orders> rm=new rowMapperImpOrders();
		List<Orders> ans=this.jdbcTemplate.query(query, rm);
		return ans;
	}
	public int delete_by_id(int id) {
		String query="delete from orders where order_id=?";
		int r=this.jdbcTemplate.update(query,id);
		return r;
		
	}
}
