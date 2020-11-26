package springmvc.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import springmvc.model.Employee;

@Repository
public class EmployeeDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	public List<Employee> allEmployees()
	{
		String query="select * from employee";
		RowMapper<Employee> rm=new rowMapperImplEmployee();
		List<Employee> emp=this.jdbcTemplate.query(query, rm);
		return emp;
	}
	
	public Employee search_by_id(int id)
	{
		String query="select * from employee where id=?";
		RowMapper<Employee> rm=new rowMapperImplEmployee();
		
		
		try {
			Employee emp=this.jdbcTemplate.queryForObject(query,rm,id);
			return emp;
		} catch (Exception e) {
			return null;
		}
	}
	public int update_sal(int id,int sal)
	{
		String query="update employee set salary=? where id=?";
		return this.jdbcTemplate.update(query,sal,id);
	}
	public int check_for_emp(int id,int s_id,String email) {
		
		String query="select * from employee where id=? and store_id=? and email=?";
		RowMapper<Employee> rm=new rowMapperImplEmployee();
		
		try {
		    this.jdbcTemplate.queryForObject(query,rm,id,s_id,email);
			return 1;
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
	}
	public List<Employee> search_by_name(String name) {
		String queString="select * from employee where name like ?";
		RowMapper<Employee> rm=new rowMapperImplEmployee();
		String s=name+"%";
		List<Employee> emp_list=this.jdbcTemplate.query(queString, rm,s);
		return emp_list;
	}
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public void update_employee_profile(Employee emp) {
	
		String query="update employee set name=?,phone=? where email=?";
		this.jdbcTemplate.update(query,emp.getName(),emp.getPhone(),emp.getEmail());		
	}

	public int insert_into_employee(Employee emp) {
		
		String query="insert into employee(name,email,joining_date,store_id,salary,phone)"
				+ "values(?,?,?,?,?,?)";
		try {
			this.jdbcTemplate.update(query,emp.getName(),emp.getEmail(),emp.getJoining_date(),emp.getStore_id(),emp.getSalary(),emp.getPhone());
			return 1;
			
		} catch (Exception e) {
			return 0;
		}
		
		
	}

	public int delete_by_id(int eid) {
		
		String qString="delete from employee where id=?";
      	return this.jdbcTemplate.update(qString,eid);

	}

	public List<Employee> getEmployeeBySid(int sid) {
		String query="select * from employee where store_id=?";
		RowMapper<Employee> rm=new rowMapperImplEmployee();
		return this.jdbcTemplate.query(query, rm,sid);
	}

	
	
}
