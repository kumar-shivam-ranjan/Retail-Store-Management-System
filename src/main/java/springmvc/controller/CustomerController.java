package springmvc.controller;
import java.util.Date;  
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
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
import springmvc.dao.CartDao;
import springmvc.dao.ComplaintDao;
import springmvc.dao.CustomerDao;
import springmvc.dao.EmployeeDao;
import springmvc.dao.FeedbackDao;
import springmvc.dao.OrderDao;
import springmvc.dao.ProductDao;
import springmvc.dao.StoreDao;
import springmvc.model.Cart;
import springmvc.model.Complaint;
import springmvc.model.Customer;
import springmvc.model.Employee;
import springmvc.model.Feedback;
import springmvc.model.Orders;
import springmvc.model.Product;
import springmvc.model.Store;

@Controller
public class CustomerController {

	@Autowired
	private CustomerDao sdao;
	
	@Autowired
	private ProductDao pdao;
	
	@Autowired
	private StoreDao storeDao;
	
	@Autowired
	private ComplaintDao c_dao;
	
	@Autowired
	private OrderDao odao;
	
	
	@Autowired
	private CartDao cartdao;
	
	@Autowired
	private EmployeeDao edao;
	
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
		
		
	@RequestMapping("/customer")
	public String customer_register()
	{
		return "customer_register";
	}
	
	
	@RequestMapping("/logout_customer")
	public String logout(HttpSession session)
	{
		session.removeAttribute("cust_email");
		return "index";
	}
	
	@RequestMapping(path = "/process_customer_form", method=RequestMethod.POST)
	public String process_customer_form(@ModelAttribute("customer") Customer customer,ModelMap m)
	{
		String temp=customer.getPassword();
		String s=encode(temp);
		customer.setPassword(s);
			int r=sdao.insert(customer);
			if(r==0)
				{
				m.put("error","Email is already registered");
				return "customer_register";
				}
			return "login_customer";
	}
	@RequestMapping("/login_customer")
	public String login_customer()
	{
		return "login_customer";
	}
	@RequestMapping(path="/customer_entry",method = RequestMethod.POST)
	public  String customer_entry(@RequestParam("cust_email") String email,@RequestParam("cust_password") String password,Model m,HttpSession session,ModelMap mp)
	{

		System.out.println(email);
		System.out.println(password);
		String temp=encode(password);
		password=temp;
		int r=sdao.check_for_customer(email, password);
		//System.out.println(r);
		if(r==1)
		{
			m.addAttribute("r",1);
			session.setAttribute("cust_email", email);
			List<Product> p_list= pdao.show_all_products();
			m.addAttribute("email",email);
			m.addAttribute("p_list",p_list);
			m.addAttribute("product_size",p_list.size());
			
			
			List<Store> store_list=storeDao.allStores();
			m.addAttribute("store_list",store_list);
			m.addAttribute("store_no",store_list.size());
			
			
			List<Orders> o_list=odao.show_orders(email);
			long  price=0;
			for(Orders p:o_list)
			{
				price+=p.getTotal_price();
			}
			m.addAttribute("o_list",o_list);
			m.addAttribute("o_no",o_list.size());
			m.addAttribute("bill",price);
			
			
			List<Cart> cart_items=cartdao.show_cart(email);
			m.addAttribute("cart_items",cart_items);	
			m.addAttribute("cart_no",cart_items.size());	
			return "customer_page";
		}
		else {
			m.addAttribute("r",0);
			mp.put("error","Email and Password didn't match");
			return "login_customer";
		}
		
	}
	
	@RequestMapping(path="/complaint",method = RequestMethod.POST)
	public String complaint(@RequestParam("product_id") int pid,@RequestParam("desc") String desc, @RequestParam("date") String date ,@RequestParam("cust_email") String email,Model m)
	{
		Complaint c=new Complaint();
		c.setComplaint_date(date);
		c.setCustomer_email(email);
		c.setDesc(desc);
		c.setProduct_id(pid);
		System.out.println(c);
		c_dao.insert_into_complaint(c);
		return "handle_complaint";
	}
	@RequestMapping(path="/buy_product",method=RequestMethod.POST)
	public String add_product(@RequestParam("product_id") int pid, @RequestParam("quantity") int quantity,@RequestParam("customer_email") String email,Model m)
	{
		Orders o=new Orders();
		Product p;
		try {
			p=pdao.getProduct(pid);
		} catch (Exception e) {
			m.addAttribute("r",0);
			return "handle_orders";
		}
		
		int sid=p.getStore_id();
		List<Employee> e=edao.getEmployeeBySid(sid);
		if(e.size()==0)
		{
			m.addAttribute("r",-1);
			return "handle_orders";
		}
		
		Customer c=sdao.get_customer_by_email(email);
		o.setEmail(email);
		o.setProduct_id(p.getProduct_id());
		o.setQuantity(quantity);
		o.setTotal_price(quantity*p.getPrice());
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
	    Date date=new Date();		
		String d=formatter.format(date);
		o.setDate(d);
		int r=odao.insert(o);
		m.addAttribute("r",r);
		return "handle_orders";	
	}
	@RequestMapping("/delete_o/{id}")
	public String delete_order(@PathVariable("id") int id,HttpSession session)
	{
		if(session.getAttribute("cust_email")==null) {
			return "index";
		}
		
		System.out.println("id is :"+ id);
		odao.delete_by_id(id);
		return "order_deleted";
	}
	
	
	@RequestMapping(path="/add_to_cart",method=RequestMethod.POST)
	public String addToCart(@RequestParam("product_id") int pid,
			@RequestParam("quantity") int q,
			@RequestParam("customer_email") String cust_email,Model m) {
		
		Cart c=new Cart();
		Product p;
		System.out.println(pid);
		try {
			p=pdao.getProduct(pid);
		} catch (Exception e) {
			m.addAttribute("r",0);
			System.out.println("HIIII");
			return "itemAddedToCart";
		}
		int sid=p.getStore_id();
		List<Employee> e=edao.getEmployeeBySid(sid);
		if(e.size()==0)
		{
			m.addAttribute("r",-1);
			return "itemAddedToCart";
		}
		Customer customer=sdao.get_customer_by_email(cust_email);
		c.setEmail(cust_email);
		c.setProduct_id(p.getProduct_id());
		c.setQuantity(q);
		c.setTotal_price(q*p.getPrice());
		System.out.println(c);
		int r=cartdao.insert_to_cart(c);
		System.out.println("r= "+r);
		m.addAttribute("r",r);
		return "itemAddedToCart";
		
	}
	
	
	@RequestMapping("/show_cust_profile")
	public String customerProfile(HttpSession session,Model m)
	{
		if(session.getAttribute("cust_email")==null)
		{
			return "index";
		}
		else {
			String cc=(String)session.getAttribute("cust_email");
			Customer cust_profile=sdao.get_customer_by_email(cc);
			m.addAttribute("cust_profile",cust_profile);
			return "customerProfile";
		}
		
	}
	
	@RequestMapping(path="/save_customer_changes",method = RequestMethod.POST)
	public String updateCustomerProfile(@ModelAttribute Customer c,Model m)
	{
		System.out.println(c);
		sdao.updateCustomerProfile(c);
		return "customerProfileUpdated";
	}
	
	
	@RequestMapping("/delete_cart_item/{cart_id}")
	public String deleteCartItems(@PathVariable("cart_id") int cart_id,HttpSession session)
	{
		if(session.getAttribute("cust_email")==null) {
			return "index";
		}
		cartdao.delete_by_id(cart_id);
		return "Cart_item_deleted";
	}
	
	@RequestMapping("/add_cart_item/{cart_id}")
	public String addCarttoOrder(@PathVariable("cart_id") int id,HttpSession session)
	{
		if(session.getAttribute("cust_email")==null)
		{
			return "index";
		}
		Cart c=cartdao.getCartById(id);
		cartdao.delete_by_id(id);
		Orders obj=new Orders();
		obj.setEmail(c.getEmail());
		obj.setProduct_id(c.getProduct_id());
		obj.setQuantity(c.getQuantity());
		obj.setTotal_price(c.getTotal_price());
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
	    Date date=new Date();
		
		String d=formatter.format(date);
		obj.setDate(d);
		odao.insert(obj);
		return "cartToOrder";
		
	}
	
	
	@RequestMapping("/CustomerHome")
	public String CustomerHome(HttpSession session,Model m)
	{
		if(session.getAttribute("cust_email")==null) 
		{
			return "index";
		}
		String email=(String) session.getAttribute("cust_email");
		List<Product> p_list= pdao.show_all_products();
		m.addAttribute("email",email);
		m.addAttribute("p_list",p_list);
		m.addAttribute("product_size",p_list.size());
		
		
		List<Store> store_list=storeDao.allStores();
		m.addAttribute("store_list",store_list);
		m.addAttribute("store_no",store_list.size());
		
		
		List<Orders> o_list=odao.show_orders(email);
		long  price=0;
		for(Orders p:o_list)
		{
			price+=p.getTotal_price();
		}
		m.addAttribute("o_list",o_list);
		m.addAttribute("o_no",o_list.size());
		m.addAttribute("bill",price);
		
		
		List<Cart> cart_items=cartdao.show_cart(email);
		m.addAttribute("cart_items",cart_items);	
		m.addAttribute("cart_no",cart_items.size());	
		return "customer_page";
		
	}
	
	
	@RequestMapping(path="/filter_product",method = RequestMethod.POST)
	public String filter_product(@RequestParam("store_id") int sid,Model m)
	{
		List<Product> p=pdao.get_product_by_id(sid);
		m.addAttribute("p",p);
		m.addAttribute("p_no",p.size());
		return "product_list_by_store";
	}
	
	@RequestMapping("/file_complaint_cus/{pid}")
	public String file_complaint_cus(@PathVariable("pid") int pid,HttpSession s,Model m)
	{
		if(s.getAttribute("cust_email")==null)
			return "index";
		String email= (String) s.getAttribute("cust_email");
		Product p=pdao.getProduct(pid);
		m.addAttribute("product",p);
		m.addAttribute("email",email);
		return "product_complaint";
	}
	@RequestMapping(path="/feedback",method = RequestMethod.POST)
	public String feedback(@ModelAttribute Feedback f,Model m)
	{
		fdao.insert(f);
		System.out.println(f);
		return "feedback";
	}
	
	
	
}
