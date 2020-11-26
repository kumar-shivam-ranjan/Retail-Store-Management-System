package springmvc.controller;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import springmvc.dao.AdminDao;
import springmvc.dao.ComplaintDao;
import springmvc.dao.CustomerDao;
import springmvc.dao.EmployeeDao;
import springmvc.dao.FeedbackDao;
import springmvc.dao.StoreDao;
import springmvc.dao.SupplierDao;
import springmvc.model.Admin;
import springmvc.model.Complaint;
import springmvc.model.Customer;
import springmvc.model.Employee;
import springmvc.model.Feedback;
import springmvc.model.Store;
import springmvc.model.Supplier;

@Controller
public class AdminController {
	
	@Autowired
	private AdminDao adminDao;
	
	@Autowired
	private EmployeeDao empDao;
	@Autowired
	private CustomerDao cDao;
	
	@Autowired
	private StoreDao sdao;
	
	@Autowired
	private ComplaintDao complaint_dao;
	
	@Autowired
	private SupplierDao supplierDao;
	
	@Autowired
	private FeedbackDao fdao;
	
	public String bytesToHex(byte bytes[])
	{
		StringBuilder sb = new StringBuilder();
		for (byte b : bytes) {
			sb.append(String.format("%02x", b));
		}
		return sb.toString();
	}


	public String encode(String password) 
	{
		MessageDigest md;
		try 
		{
			md = MessageDigest.getInstance("SHA-256");
			byte[] result= md.digest(password.getBytes(StandardCharsets.UTF_8));
			String hex= bytesToHex(result);	
			return hex;

		} 
		catch (NoSuchAlgorithmException e) 
		{
			e.printStackTrace();
			return null;
		}
	}
	
	
	
	@RequestMapping("/admin")
	public String admin_login()
	{
		return "admin_login_form";
	}
	@RequestMapping(path="/process_admin_form",method = RequestMethod.POST)
	public String process_admin_form(@RequestParam("email") String email,@RequestParam("password") String password,
			HttpSession session,ModelMap mp,Model m)
	{
		if(adminDao.check_for_admin(email, password)==null)
			{
			m.addAttribute("r",0);
			mp.put("error","Email and password didn't match");
			return "admin_login_form";
			}
		else {
			session.setAttribute("email", email); // ${email}
			//m.addAttribute("email",email);
			//employee
			m.addAttribute("r",1);
			List<Employee> empList=empDao.allEmployees();
			int no=empList.size();
			m.addAttribute("no",no);
			m.addAttribute("empList",empList);
			
			
			//customer
			List<Customer> cList=cDao.allCustomers();
			int c_no=cList.size();
			System.out.println(c_no);
			m.addAttribute("cList",cList);
			m.addAttribute("c_no",c_no);
			
			
			//store
			List<Store> sList=sdao.allStores();
			m.addAttribute("sList",sList);
			int s_no=sList.size();
			m.addAttribute("s_no",s_no);
			
			List<Complaint> c_list=complaint_dao.show_complaints();
			m.addAttribute("complaint_list",c_list);
			m.addAttribute("complaint_no",c_list.size());
			
			
			List<Supplier> supplier_list=supplierDao.show_supplier();
			m.addAttribute("supplier_list",supplier_list);
			m.addAttribute("supplier_list_size",supplier_list.size());
			
			
			
			List<Feedback> feedback=fdao.getfeedback();
			m.addAttribute("feedback",feedback);
			m.addAttribute("f_no",feedback.size());
			//System.out.println("No of Feedback: "+feedback.size());
			return "admin_form_process";
		}	
	}
	
	@RequestMapping(path="/search_by_empid",method = RequestMethod.POST)
	public String search_by_empID(@RequestParam("empID") int id,Model m,HttpSession session) {
		
			String email=(String) session.getAttribute("email");
			m.addAttribute("email",email);
			System.out.println("id is: "+id);
			Employee emp=empDao.search_by_id(id);
			System.out.println(emp);
			if(emp==null)
			{
				m.addAttribute("emp","null");
			}
			else m.addAttribute("emp",emp);
			return "emp_search_result";
		
	}
	@RequestMapping(path="/process_update" ,method=RequestMethod.POST)
	public String process_update(@RequestParam("updid") int id, @RequestParam("updSal") int sal,Model m)
	{
		
		
		int ans=empDao.update_sal(id,sal);
//		System.out.println(id);
//		System.out.println(sal);
//		System.out.println(ans);
		m.addAttribute("res",ans);
		return "upd_query";
	}
	
	
	@RequestMapping(path="/search_by_empname",method = RequestMethod.POST)
	public String search_by_emp_name(@RequestParam("emp_name") String name,Model m)
	{
		String[] names=name.split(" ");
		//System.out.println(names[0]);
		List<Employee> emp_list=empDao.search_by_name(names[0]);
		m.addAttribute("emp_list_names",emp_list);
		m.addAttribute("no",emp_list.size());
		return "search_by_emp_name_result";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session)
	{
		session.removeAttribute("email");
		return "index";
	}
	
	
	@RequestMapping("/admin_profile")
	public String profile_update(HttpSession session,Model m)
	{
		if(session.getAttribute("email")==null)
		{
			return "index";
		}
		String email=(String) session.getAttribute("email");
		Admin ad=adminDao.getAdmin_by_email(email);
		m.addAttribute("admin",ad);
		return "admin_profile_page";
	}
	@RequestMapping(path="/save_admin_changes",method=RequestMethod.POST)
	public String save_admin_changes(@RequestParam("email") String email,
			@RequestParam("name") String name,
			@RequestParam("address") String address,
			@RequestParam("contact") String contact
	)
	{
		adminDao.updateProfile(email,name,address,contact);
		return "ProfileUpdated";
	}
	
	
	@RequestMapping(path="/add_employee",method = RequestMethod.POST)
	public String addEmp(@ModelAttribute Employee emp,Model m,HttpSession session) {
		
		if(session.getAttribute("email")==null) {
			return "index";
		}
		Store ss=sdao.getStoreById(emp.getStore_id());
		if(ss==null)
		{
			m.addAttribute("r",2);
		}
		else {
			//System.out.println(emp);
			int r=empDao.insert_into_employee(emp);
			m.addAttribute("r",r);
		}
		
		return "emp_added";
	}
	
	@RequestMapping(path="/delete_by_empid",method = RequestMethod.POST)
	public String delete_employee(@RequestParam("empID") int eid,Model m)
	{
		
		int r=empDao.delete_by_id(eid);
		m.addAttribute("r",r);
		m.addAttribute("eid",eid);
		return "employee_deleted";
	}
	
	
	@RequestMapping("/delete_store/{store_id}")
	public String deleteStore(@PathVariable("store_id") int id)
	{
		sdao.delete_by_id(id);
		return "store_deleted";
	}
	
	@RequestMapping("/AdminHome")
	public String adminHome(HttpSession session,Model m)
	{
		if(session.getAttribute("email")==null)
			return "index";
		else {
			//String email=(String) session.getAttribute("email");
			//Admin ad=adminDao.getAdmin_by_email(email);
			List<Employee> empList=empDao.allEmployees();
			int no=empList.size();
			m.addAttribute("no",no);
			m.addAttribute("empList",empList);
			
			
			//customer
			List<Customer> cList=cDao.allCustomers();
			int c_no=cList.size();
			System.out.println(c_no);
			m.addAttribute("cList",cList);
			m.addAttribute("c_no",c_no);
			
			
			//store
			List<Store> sList=sdao.allStores();
			m.addAttribute("sList",sList);
			int s_no=sList.size();
			m.addAttribute("s_no",s_no);
			
			List<Complaint> c_list=complaint_dao.show_complaints();
			m.addAttribute("complaint_list",c_list);
			m.addAttribute("complaint_no",c_list.size());
			
			
			List<Supplier> supplier_list=supplierDao.show_supplier();
			m.addAttribute("supplier_list",supplier_list);
			m.addAttribute("supplier_list_size",supplier_list.size());
			
			List<Feedback> feedback=fdao.getfeedback();
			m.addAttribute("feedback",feedback);
			m.addAttribute("f_no",feedback.size());
			return "admin_form_process";
		}
	}
	
	@RequestMapping(path="/add_store_admin",method = RequestMethod.POST)
	public String addStore(@ModelAttribute Store store,Model m)
	{
		Store s=sdao.insert(store);
		System.out.println("store is "+ s);
		if(s==null)
		{
			m.addAttribute("store","null");
		}
		else m.addAttribute("store",s);
		return "store_added";
	}
	@RequestMapping("/delete_supplier/{sid}")
	public String  deleteSupplier(@PathVariable("sid") int sid,Model m) {
		supplierDao.delete_by_id(sid);
		m.addAttribute("id",sid);
		return "supplier_deleted";
	}
	
	@RequestMapping(path="/add_supplier_admin",method = RequestMethod.POST)
	public String add_supplier_admin(@ModelAttribute Supplier s,Model m)
	{
		Supplier news=supplierDao.insert(s);
		if(news==null)
		{
			m.addAttribute("supplier","null");
		}
		else {
			m.addAttribute("supplier",news);
		}
		return "supplier_added";
		
	}
	
}
