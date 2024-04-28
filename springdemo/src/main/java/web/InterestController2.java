package web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class InterestController2 {
	
	@GetMapping("/interest2")
	public String interestForm(Model model) {
		model.addAttribute("interest", new InterestModel());
		return "interest2";
	}
	
	@PostMapping("/interest2")
	public String calculate(InterestModel intModel, Model model) {
		int interest = intModel.getAmount() * intModel.getRate() / 100;
		intModel.setInterest(interest);
		model.addAttribute("intModel", intModel);
		return "interest2";
	}
}
