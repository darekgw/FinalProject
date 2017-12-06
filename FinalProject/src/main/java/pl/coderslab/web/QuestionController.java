package pl.coderslab.web;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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

	
	@RequestMapping("/start")
	public String startQuiz(Model model, HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession sess = request.getSession();
		sess.removeAttribute("askedQuestions");
		sess.removeAttribute("answers");
		
		noOfQuestions = 20 ;
		noOfQuestionsInBase = questionRepository.count();
		if (noOfQuestions > noOfQuestionsInBase) {
			noOfQuestions = noOfQuestionsInBase;
		}	
		sess.setAttribute("noOfQuestions", noOfQuestions);
	
		questionNo = 0;
		sess.setAttribute("questionNo", questionNo);
		
		pointsScored = 0;
		sess.setAttribute("pointsScored", pointsScored);
		
		idList = questionRepository.idList();
		Collections.shuffle(idList);	
		
		return "start";
	}

	
	@GetMapping("/question")
	public String askQuestion(Model model, HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession sess = request.getSession();
		
		questionNo = (int) sess.getAttribute("questionNo");
		
		Question question = questionRepository.findOne(idList.get(questionNo));
		model.addAttribute("question", question);
		
		sess.setAttribute("questionNo", questionNo);
		
		return "question";
	}
	
//	class QuizEntry{
//		Question q;
//		Answer a;
//	}

	@PostMapping("/question")
	public String takeAnswer(Model model, @RequestParam int id, @RequestParam(required=false) String answer,
			HttpServletRequest request, HttpServletResponse response) {
		
		Question question = questionRepository.findOne(id);
		
		HttpSession sess = request.getSession();
		
		noOfQuestions = (long) sess.getAttribute("noOfQuestions") - 1l;
		sess.setAttribute("noOfQuestions", noOfQuestions);
		
		List<Question> askedQuestions = (List<Question>) sess.getAttribute("askedQuestions");
		if (askedQuestions == null) {
			askedQuestions = new ArrayList<>();
		}
		
			askedQuestions.add(question);
		
		List <String> answers = (List<String>) sess.getAttribute("answers");
		if(answers == null) {
			answers = new ArrayList<>();
		}
			
			if(answer == null) {
				answer = "brak odpowiedzi";
			}
			
			answers.add(answer);	
		
			pointsScored = (int) sess.getAttribute("pointsScored");
			
		if(answer.equals(question.getRightAnswer())) {
			pointsScored++;
		} else {
			pointsScored--;
		}
		
//		List<QuizEntry> l;
		
		questionNo = (int) sess.getAttribute("questionNo") +1;
		sess.setAttribute("questionNo", questionNo);

		sess.setAttribute("askedQuestions", askedQuestions);
		sess.setAttribute("answers", answers);
		sess.setAttribute("pointsScored", pointsScored);
		
		if (noOfQuestions >0) {
			return "redirect:/question";
		}

		double percent = Math.round((((double)pointsScored/questionNo)*100)*100)/100;;	
//		Math.round((((double)pointsScored/questionNo)*100)*100)/100;
		model.addAttribute("percent", percent);

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
