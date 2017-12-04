package pl.coderslab.web;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.validation.Valid;
import javax.validation.Validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	private long noOfQuestions;
	private long noOfQuestionsInBase;
	private int questionNo;
	private int pointsScored;
	private List<Integer> idList;
	private List<Question> askedQuestions;
	private List<String> answers;
	
	@RequestMapping("/start")
	public String startQuiz() {
		noOfQuestions = 20;
		noOfQuestionsInBase = questionRepository.count();
		if (noOfQuestions > noOfQuestionsInBase) {
			noOfQuestions = noOfQuestionsInBase;
		}	
		askedQuestions = new ArrayList<>();
		answers = new ArrayList<>();
		questionNo = 0;
		pointsScored = 0;
		idList = questionRepository.idList();
		Collections.shuffle(idList);	
		
		return "start";
	}
	
	@GetMapping("/question")
	public String askQuestion(Model model) {
		Question question = questionRepository.findOne(idList.get(questionNo));
		model.addAttribute("question", question);
		noOfQuestions--;
		return "question";
	}
	
	@PostMapping("/question")
	public String takeAnswer(Model model, @RequestParam int id, @RequestParam String answer) {
		Question question = questionRepository.findOne(id);
		askedQuestions.add(question);
		answers.add(answer);
		
		if(answer.equals(question.getRightAnswer())) {
			pointsScored++;
		} else {
			pointsScored--;
		}
		
		questionNo++;
		
		if (noOfQuestions >0) {
			return "redirect:/question";
		}
		
		model.addAttribute("questionNo", questionNo);
		model.addAttribute("askedQuestions", askedQuestions);
		model.addAttribute("answers", answers);
		model.addAttribute("pointsScored", pointsScored);
		
		return "summary";
	}

	@GetMapping("/question/list")
	public String getQuestions(Model model) {
		List<Question> questions = questionRepository.findAll();
		model.addAttribute("questions", questions);
		return "/all_questions";
	}
	
	@GetMapping("/question/add")
	public String addQuestion(Model model) {
		Question question = new Question();
		model.addAttribute("question", question);
		return "add_question";
	}
	
	@RequestMapping(value = "/question/add", method = RequestMethod.POST)
	public String questionValidator(Model model, @Valid Question question, BindingResult result) {
		if (result.hasErrors()) {
			return "add_question";
		}
		questionRepository.save(question);
		return "redirect:/question/list";
	}
	
	@RequestMapping("/question/del/{id}")
	public String delQuestion(Model model, @PathVariable int id) {
		Question question = questionRepository.findOne(id);
		questionRepository.delete(question);
		return "redirect:/question/list";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
