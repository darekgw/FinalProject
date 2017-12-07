package pl.coderslab.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pl.coderslab.entity.User;
import pl.coderslab.repository.UserRepository;

@Controller
public class UserController {

	@Autowired
	UserRepository userRepository;
	
	@GetMapping("/user/add/{pointsScored}")
	public String addUser(Model model, @PathVariable double pointsScored) {
		User user = new User();
		model.addAttribute("pointsScored", pointsScored);
		model.addAttribute("user", user);
		return "add_user";
	}
	
	@PostMapping("/user/add/{pointsScored}")
	public String addUserToBase(Model model, @ModelAttribute User user) {
		userRepository.save(user);
		List<User> users = userRepository.findByOrderByPointsScoredDesc();
		int userSize = users.size();
		int position = userRepository.countByPointsScoredGreaterThan(user.getPointsScored());
		model.addAttribute("users", users);
		model.addAttribute("position", position);
		model.addAttribute("userSize", userSize);
		return "show_user";
	}
	
	@RequestMapping("/user/top")
	public String topList(Model model) {
		
		List<User> top = userRepository.findFirst20ByOrderByPointsScoredDesc();
		model.addAttribute("top", top);
		
		return "top";
	}
	
	@RequestMapping("/user/name/{name}")
	public String yourResult(Model model, @PathVariable(required=false) String name) {
		
		List<User> yourResult = userRepository.findByName(name);
		model.addAttribute("yourResult", yourResult);
		
		return "your_result";
	}
	
}
