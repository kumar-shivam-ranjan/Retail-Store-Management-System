package springmvc.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import springmvc.model.Admin;

@Repository
public class AdminDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public Admin check_for_admin(String email, String password) {
		String query = "select * from Admin where email=? and password=?";
		RowMapper<Admin> rowMapper = new rowMapperImplAdmin();

		try {
			Admin ad = jdbcTemplate.queryForObject(query, rowMapper, email, password);
			return ad;
		} catch (Exception e) {
			// TODO: handle exception
			return null;
		}
	}

	public Admin getAdmin_by_email(String email) {

		String q = "select * from admin where email=?";
		RowMapper<Admin> rm = new rowMapperImplAdmin();
		Admin ad = this.jdbcTemplate.queryForObject(q, rm, email);
		return ad;
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public void updateProfile(String email, String name, String address, String contact) {
		
		String quString="update admin set name=? , address=? , contact=? where email=?";
		this.jdbcTemplate.update(quString,name,address,contact,email);
		
	}

}
