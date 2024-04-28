package web;

import java.time.LocalDate;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloController {
	
	@GetMapping("/hello")
	@ResponseBody
	public String hello() {
		return "<h1>Hello From Spring MVC</h1>";
	}
	
	@GetMapping("/greet")
	public String greet() {
		return "greet";
	}
	
	@GetMapping("/wish")
	public String wish(@RequestParam(name = "name", required = false, defaultValue = "Guest") String name, Model model) {
		model.addAttribute("name", name);
		model.addAttribute("today", LocalDate.now().toString());
		return "wish";
	}
}