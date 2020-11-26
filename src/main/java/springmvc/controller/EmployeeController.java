package springmvc.controller;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
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
import springmvc.dao.EmployeeDao;
import springmvc.dao.OrderDao;
import springmvc.dao.ProductDao;
import springmvc.model.Employee;
import springmvc.model.Orders;
import springmvc.model.Product;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeDao eDao;
	@Autowired
	private ProductDao pdao;
	
	@Autowired
	private OrderDao odao;
	@RequestMapping("/employee")
	public String employee_login()
	{
		return "employee_login";
	}
	
	@RequestMapping("/employee_logout")
	public String logout(HttpSession session)
	{
		session.removeAttribute("employee_id");
		return "index";
	}
	@RequestMapping(path="/process_employee_form",method = RequestMethod.POST)
	public String process_employee_form(@RequestParam("emp_id") int emp_id,@RequestParam("store_id") int store_id,@RequestParam("emp_email") String emp_email,
			HttpSession session, ModelMap mp,Model m)
	{
		//System.out.println(emp_id);
		//System.out.println(emp_email);
		int r=eDao.check_for_emp(emp_id,store_id,emp_email);
		if(r==0)
		{
			mp.put("error","Incorrect Credentials");
			m.addAttribute("r",0);
			return "employee_login";
		}
		else {
			m.addAttribute("r",1);
			Employee employee=eDao.search_by_id(emp_id);
			session.setAttribute("employee_id", employee.getId());
			System.out.println(employee);
			m.addAttribute("emp_id",emp_id);
			m.addAttribute("store_id",store_id);
			m.addAttribute("emp_email",emp_email);
			m.addAttribute("employee",employee);
			List<Product> p_list=pdao.show_products(store_id);
			int p_no=p_list.size();
			m.addAttribute("p_list",p_list);
			m.addAttribute("p_no",p_no);
			
			
			List<Orders> oList=odao.show_orders();
			List<Orders> olist=new ArrayList<Orders>();
			for(Orders o:oList) {
				Product p=pdao.getProduct(o.getProduct_id());
				if(p.getStore_id()==store_id)
					olist.add(o);
			}
			m.addAttribute("oList",olist);
			m.addAttribute("oListSize",olist.size());
			return "employee_form_process";
		}
	}
	@RequestMapping(path="/upd_price",method = RequestMethod.POST)
	public String update_price(@RequestParam("p_id") int p_id ,@RequestParam("new_price") int price, @RequestParam("store_id") int s_id,Model m)
	{	
//		System.out.println(p_id);
//		System.out.println(price);
//		System.out.println(s_id);
		int r=pdao.update_product(p_id,s_id,price);
		System.out.println(r);
		m.addAttribute("r",r);
		return "update_price";
	}
	@RequestMapping(path="/delete_product",method = RequestMethod.POST)
	public String del_product(@RequestParam("pid") int pid,@RequestParam("sid") int sid,Model m)
	{
		int r=pdao.delete_product(pid,sid);
		m.addAttribute("r",r);
//		System.out.println("r: "+r);
		return "delete_product";
	}
	
	@RequestMapping(path="/add_product",method = RequestMethod.POST)
	public String add_product(@ModelAttribute Product p,Model m)
	{
//		System.out.println(p);
		int r=pdao.insert(p);
//		System.out.println(r);
		m.addAttribute("r",r);
		return "product_added";
	}
	@RequestMapping("/employee_profile")
	public String employee_profile(HttpSession session,Model m) {
		
		if(session.getAttribute("employee_id")==null)
		{
			return "employee_login";
		}
		else {
			int id=(Integer) session.getAttribute("employee_id");
			Employee emp=eDao.search_by_id(id);
			m.addAttribute("employee",emp);
//			System.out.println(emp.getName());
			return "employee_profile_page"; 
		}	
	}
	
	@RequestMapping(path="/save_employee_changes",method = RequestMethod.POST)
	public String save_employee_changes(@ModelAttribute Employee emp,Model m)
	{
		eDao.update_employee_profile(emp);
		return "save_employee_changes";
	}
	
	@RequestMapping("delete_product_item/{pid}")
	public String deleteProduct(@PathVariable("pid") int pid,HttpSession session,Model m)
	{
		if(session.getAttribute("employee_id")==null)
			return "index";
		else {
			int r=pdao.delete_product_by_id(pid);
			m.addAttribute("r",r);
			return "ProductDeletedByEmp";
			
		}
	}
	@RequestMapping("/EmployeeHome")
	public String EmployeeHome(HttpSession session,Model m)
	{
		if(session.getAttribute("employee_id")==null)
			return "index";
		else {
			int id=(Integer) session.getAttribute("employee_id");
			Employee emp=eDao.search_by_id(id);
			m.addAttribute("employee",emp);
			System.out.println(emp);
			int emp_id=emp.getId();
			int store_id=emp.getStore_id();
			String emp_email=emp.getEmail();
			m.addAttribute("emp_id",emp_id);
			m.addAttribute("store_id",store_id);
			m.addAttribute("emp_email",emp_email);
			List<Product> p_list=pdao.show_products(store_id);
			int p_no=p_list.size();
			m.addAttribute("p_list",p_list);
			m.addAttribute("p_no",p_no);
			
			
			List<Orders> oList=odao.show_orders();
			List<Orders> olist=new ArrayList<Orders>();
			for(Orders o:oList) {
				Product p=pdao.getProduct(o.getProduct_id());
				if(p.getStore_id()==store_id)
					olist.add(o);
			}
			m.addAttribute("oList",olist);
			m.addAttribute("oListSize",olist.size());
			return "employee_form_process";
		}
		
	}
	
	@RequestMapping("/update_product_item/{id}")
	public String updateProduct(@PathVariable("id") int pid , HttpSession session, Model m)
	{
		Product p=pdao.getProduct(pid);
		m.addAttribute("p",p);
		return "update_product_by_emp";
	}
	@RequestMapping(path="/product_update_emp",method = RequestMethod.POST)
	public String product_update_emp(@ModelAttribute Product p,HttpSession session,HttpServletRequest request) 
	{
		if(session.getAttribute("employee_id")==null)
			return "index";
		else {
			pdao.update_product_by_emp(p.getProduct_id(),p.getPrice(),p.getCategory());
			return "redirect:/EmployeeHome";
			//return "Test";
		}
	}
	@RequestMapping(path="/show_emp_bysid",method = RequestMethod.POST)
	public String show_emp_bysid(@RequestParam("sid") int sid,Model m)
	{
		List<Employee> e=eDao.getEmployeeBySid(sid);
		m.addAttribute("e",e);
		m.addAttribute("no",e.size());
		return "get_emp_by_sid";
	}
	
	
	
	
	
	
}
