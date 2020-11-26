package springmvc.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import springmvc.model.Feedback;

@Repository
public class FeedbackDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	public int insert(Feedback f)
	{
		String query="insert into feedback(description,date,email) values(?,?,?)";
		return this.jdbcTemplate.update(query,f.getDesc(),f.getDate(),f.getEmail());
	}

	public List<Feedback> getfeedback() {
		
		String query="select * from feedback";
		RowMapper<Feedback> rm=new rowMappingImplFeedback();
		return this.jdbcTemplate.query(query, rm);
	}
}
