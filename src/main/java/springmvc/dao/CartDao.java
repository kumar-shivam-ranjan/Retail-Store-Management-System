package springmvc.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import springmvc.model.Cart;


@Repository
public class CartDao {
	
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	
	public int insert_to_cart(Cart c) {
		String query="insert into cart(email,product_id,quantity,total_price) values(?,?,?,?)";
		try {
			this.jdbcTemplate.update(query,c.getEmail(),c.getProduct_id(),c.getQuantity(),c.getTotal_price());
			return 1;
		} catch (Exception e) {
			return 0;
		}
		
	}
	
	
	
	
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}





	public List<Cart> show_cart(String email) {
		
		String query="select * from cart where email=?";
		RowMapper<Cart> rm=new rowMapperImplCart();
		List<Cart> cart_items=this.jdbcTemplate.query(query, rm,email);
		return cart_items;
		
	}



	public Cart getCartById(int id)
	{
		String query="select * from cart where cart_id=?";
		RowMapper<Cart> rm=new rowMapperImplCart();
		Cart cart_item=this.jdbcTemplate.queryForObject(query,rm,id);
		return cart_item;
	}

	public void delete_by_id(int cart_id) {
	
		String queString="delete from cart where cart_id=?";
		this.jdbcTemplate.update(queString,cart_id);
		
	}
	
	
	
	

}
