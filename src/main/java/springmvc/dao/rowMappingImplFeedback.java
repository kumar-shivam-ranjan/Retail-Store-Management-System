package springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import springmvc.model.Feedback;

public class rowMappingImplFeedback implements RowMapper<Feedback>{
	

	public Feedback mapRow(ResultSet rs, int rowNum) throws SQLException {
		Feedback f=new Feedback();
		f.setFeedback_id(rs.getInt(1));
		f.setDesc(rs.getString(2));
		f.setDate(rs.getString(3));
		f.setEmail(rs.getString(4));
		return f;
	}
	

}
