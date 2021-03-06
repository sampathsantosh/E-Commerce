package com.niit.controller;


import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.backend.DAO.CardDAO;
import com.backend.DAO.CartDAO;
import com.backend.DAO.CheckOutDAO;
import com.backend.DAO.OrderDAO;
import com.backend.DAO.ProductDAO;
import com.backend.DAO.UserDAO;
import com.backend.model.Card;
import com.backend.model.Order;
import com.backend.model.Product;





@Controller
public class CheckOutController 
{
	@Autowired
	CheckOutDAO checkOutDAO;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	OrderDAO orderDAO;
	
	@Autowired
	CardDAO cardDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping(value = "checkout")
	public String CheckoutPage(@ModelAttribute("card")Card card,Model model)
	{
	//	model.addAttribute("total", checkOutDAO.getTotal(userid));
		return "CheckOut";	
	}

		
	@RequestMapping(value="/invoice",method=RequestMethod.POST)
	public String InvoicePage(@ModelAttribute ("card") Card card, HttpSession session, Model model)
	{
		int charges=99;
		int userid = (Integer) session.getAttribute("userid");
		cartDAO.getCartById(userid);
		card.setCard_userid(userid);
		cardDAO.saveCard(card);
		orderDAO.OrderDetails();
		
	   	
		model.addAttribute("user", userDAO.getUserById(userid));
    	model.addAttribute("cd", cartDAO.getCartById(userid));
    	model.addAttribute("total",checkOutDAO.getTotal(userid));
		model.addAttribute("cod", charges);
		cartDAO.removeCartById(userid);
		return "Invoice";
	}
	
	
	@RequestMapping(value="/CodInvoice",method=RequestMethod.POST)
	public String CodInvoicePage(@ModelAttribute ("card") Card card,HttpSession session, Model model)
	{
		
		int charges=99;
		int userId = (Integer) session.getAttribute("userid");
		cartDAO.getCartByStatus(userId);
		//mailService.sendEmail(userId);
	
		orderDAO.OrderDetails();
		
		
		
		model.addAttribute("user", userDAO.getUserById(userId));
    	model.addAttribute("cd", cartDAO.getCartById(userId));
    	/*cart.setGrandTotal(checkOutDAO.getTotal(userId)+"99");
    	*/model.addAttribute("total",checkOutDAO.getTotal(userId));
   
		model.addAttribute("cod", charges);
		cartDAO.removeCartById(userId);
		return "Invoice";
	}
	@RequestMapping("continuesshopping")
	public String continuesshopping()
	{
	   return "redirect:/viewcart";
	}
	
	@RequestMapping(value="/product{userid}", method=RequestMethod.GET)
	public String categoryList(@PathVariable ("userid") int userid , Map<String,Object> map , Model model)
	{
		Product product = new Product();
		map.put("product", product);
		map.put("prodList", productDAO.getProductById(userid));
		return "ProductList";
	}

	@RequestMapping(value="/orders")
	public String myOrders(Model model,HttpSession session)
	{
		/*model.addAttribute("users", new Users());*/
		int userId = (Integer) session.getAttribute("userid");
		
		model.addAttribute("od", orderDAO.getOrderDetailsByUser(userId));
				
		model.addAttribute("total",orderDAO.getTotal(userId));
		
		return "orders";
		
	}
}