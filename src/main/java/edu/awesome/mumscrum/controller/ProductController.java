package edu.awesome.mumscrum.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import edu.awesome.mumscrum.domain.Product;

@Controller
public class ProductController {
	
	@RequestMapping(value={"product/new"},method = RequestMethod.GET )
	public String newProduct(Model model){
		model.addAttribute("product",new Product());
		model.addAttribute("edit", false);
		return "productform";
		
	}
	
	@RequestMapping(value={"product/new"},method = RequestMethod.POST)
	public String createProduct(@Valid Product product,BindingResult result, ModelMap model,HttpSession session){
	session.setAttribute("product", product);
		if(result.hasErrors()){
		return "productform";
	}else{
		return "productlist";
		
	}
	
	}

}
