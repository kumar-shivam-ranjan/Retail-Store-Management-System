package springmvc.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import springmvc.model.Store;

@Repository
public class StoreDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	public StoreDao() {
		super();
		// TODO Auto-generated constructor stub
	}
	public StoreDao(JdbcTemplate jdbcTemplate) {
		super();
		this.jdbcTemplate = jdbcTemplate;
	}
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	public List<Store> allStores()
	{
		String query="select * from store";
		RowMapper<Store> rm=new rowMapperImpStore();
		List<Store> storeList=this.jdbcTemplate.query(query, rm);
		return storeList;
	}
	public void delete_by_id(int id) {
		
		String query="delete from store where store_id=?";
		this.jdbcTemplate.update(query,id);
		
	}
	public Store insert(Store store) {
	
		String query="insert into store(state,city,road_no,store_license_no)"
				+ "values(?,?,?,?)";
		try {
			this.jdbcTemplate.update(query,store.getState(),store.getCity(),store.getRoad_no(),store.getStore_license_no());
			Store s=get_store_by_lno(store.getStore_license_no());
			return s;
		} catch (Exception e) {
			return null;
		}
		
	}
	private Store get_store_by_lno(String store_license_no) {
		String query="select * from store where store_license_no=?";
		RowMapper<Store> rm=new rowMapperImpStore();
		return this.jdbcTemplate.queryForObject(query,rm,store_license_no);
	}
	public Store getStoreById(int store_id) {
		String query="select * from store where store_id=?";
		RowMapper<Store> rm=new rowMapperImpStore();
		try {
			Store s=this.jdbcTemplate.queryForObject(query,rm,store_id);
			return s;
		} catch (Exception e) {
			return null;
		}
		
	}
	
}
