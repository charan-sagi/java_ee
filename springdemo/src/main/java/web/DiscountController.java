package web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class DiscountController {
	
	@GetMapping("/discount")
	public String discountForm(Model model) {
		model.addAttribute("discountModel", new DiscountModel());
		return "discount";
	}
	
	@PostMapping("/discount")
	public String calculate(DiscountModel discountModel, Model model) {
		int np = discountModel.getRate() - (discountModel.getRate() * discountModel.getDiscount() / 100);
		discountModel.setNetprice(np);
		
		model.addAttribute("discountModel", discountModel);
		model.addAttribute("discountAmount", discountModel.getRate() - discountModel.getNetprice());
		
		return "discount";
	}
}
