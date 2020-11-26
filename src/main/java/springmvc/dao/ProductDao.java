package springmvc.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import springmvc.model.Product;

@Repository
public class ProductDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	public List<Product> show_products(int id)
	{
		String query="select * from products where store_id=?";
		RowMapper<Product> rm=new rowMapperImplProduct();
		List<Product> ans=this.jdbcTemplate.query(query,rm,id);
		return ans;
		
	}
	public Product getProduct(int id)
	{
		String query="select * from products where product_id=?";
		RowMapper<Product> rm=new rowMapperImplProduct();
		Product ans=this.jdbcTemplate.queryForObject(query,rm,id);
		return ans;
	}
	public int update_product(int p_id,int s_id,int price)
	{
		String queString="update products set price=? where product_id=? and store_id=?";
		String query="select * from products where product_id =? and store_id=?";
		RowMapper<Product> rm=new rowMapperImplProduct();
		try {
			Product p=this.jdbcTemplate.queryForObject(query,rm,p_id,s_id);
			this.jdbcTemplate.update(queString,price,p_id,s_id);
			return 1;
		} catch (Exception e) {
			return 0;
		}
	}
	public List<Product> show_all_products()
	{
		String query="select * from products";
		RowMapper<Product> rm=new rowMapperImplProduct();
		List<Product> ans=this.jdbcTemplate.query(query,rm);
		return ans;
	}
	public int delete_product(int pid,int sid)
	{
		String q="delete from products where product_id=? and store_id=?";
		int r=this.jdbcTemplate.update(q,pid,sid);
		return r;
	}
	public int insert(Product p)
	{
		String q="insert into products(product_id ,store_id,expiry_date,price,supplier_id,category) values(?,?,?,?,?,?)";
		try {
			this.jdbcTemplate.update(q,p.getProduct_id(),p.getStore_id(),p.getExpiry_date(),p.getPrice(),p.getSupplier_id(),p.getCategory());
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
	public int delete_product_by_id(int pid) {
		String query="delete from products where product_id=?";
		return this.jdbcTemplate.update(query,pid);
	}
	public void update_product_by_emp(int pid,int price, String category) {
		System.out.println(pid);
		System.out.println(price);
		System.out.println(category);
		String q1="update products set price=? where product_id=?";
		String q2="update products set category=? where product_id=?";
		this.jdbcTemplate.update(q1,price,pid);
		this.jdbcTemplate.update(q2,category,pid);
		
	}
	public List<Product> get_product_by_id(int sid) {
		
		String query="select * from products where store_id=?";
		RowMapper<Product> rm=new rowMapperImplProduct();
		List<Product> p=this.jdbcTemplate.query(query,rm,sid);
		return p;	
	}
	
}
