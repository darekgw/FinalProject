package pl.coderslab.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.validation.Validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pl.coderslab.dao.QuestionDao;
import pl.coderslab.entity.Question;
import pl.coderslab.repository.QuestionRepository;



@Controller
public class QuestionController {
	
	@Autowired
	QuestionRepository questionRepository;
	
	@Autowired
	QuestionDao questionDao;
	
	@Autowired
	Validator validator;
	
	@RequestMapping("/quiz")
	public String startQuiz() {
		
		return "quiz";
	}

	@GetMapping("/question/list")
	public String getQuestions(Model model) {
		List<Question> questions = questionRepository.findAll();
		model.addAttribute("questions", questions);
		return "/questions";
	}
	
	@GetMapping("/question/add")
	public String addQuestion(Model model) {
		Question question = new Question();
		model.addAttribute("question", question);
		return "add_question";
	}
	
//	@RequestMapping(value = "/question/add", method = RequestMethod.POST)
//	public String questionAdd(Model model, @ModelAttribute Question question) {
//		questionRepository.save(question);
//		return "redirect:/question/list";
//	}
	
	@RequestMapping(value = "/question/add", method = RequestMethod.POST)
	public String questionValidator(Model model, @Valid Question question, BindingResult result) {
		if (result.hasErrors()) {
			return "add_question";
		}
		questionRepository.save(question);
		return "redirect:/question/list";
	}
	
}
