package springmvc.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import springmvc.model.Supplier;

@Repository
public class SupplierDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<Supplier> show_supplier()
	{
		String query="select * from supplier";
		RowMapper<Supplier> rm=new rowMapperImplSupplier();
		List<Supplier> s=this.jdbcTemplate.query(query, rm);
		return s;
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public void delete_by_id(int sid) {
		String query="delete from supplier where supplier_id=?";
		this.jdbcTemplate.update(query,sid);
	}
	public Supplier get_suplier_by_email(String email) {
		String query="select * from supplier where email=?";
		RowMapper<Supplier> rm=new rowMapperImplSupplier();
		Supplier s=this.jdbcTemplate.queryForObject(query,rm,email);
		return s;
	}
	public Supplier insert(Supplier s) {
		String query="insert into supplier(name,email,dob,address,phone)"
				+ "values(?,?,?,?,?)";
		try {
			this.jdbcTemplate.update(query,s.getName(),s.getEmail(),s.getDob(),s.getAddress(),s.getPhone());
			Supplier ss=get_suplier_by_email(s.getEmail());
			return ss;
		} catch (Exception e) {
			return null;
		}
		
	}

	
	
	
}
