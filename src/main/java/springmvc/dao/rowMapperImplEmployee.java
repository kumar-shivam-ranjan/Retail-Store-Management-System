package springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import springmvc.model.Employee;

public class rowMapperImplEmployee implements RowMapper<Employee> {

	public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Employee emp=new Employee();
		emp.setId(rs.getInt(1));
		emp.setName(rs.getString(2));
		emp.setEmail(rs.getString(3));
		emp.setJoining_date(rs.getString(4));
		emp.setStore_id(rs.getInt(5));
		emp.setSalary(rs.getInt(6));
		emp.setPhone(rs.getString(7));
		return emp;
		
	}

}
