package pl.coderslab.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "questions")
public class Question {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@NotNull
	private String category;
	
    @NotNull
    @Column(columnDefinition = "TEXT")
	private String quest;
	
	@NotNull
	@Column(columnDefinition = "TEXT")
	private String answer1;
	
	@NotNull
	@Column(columnDefinition = "TEXT")
	private String answer2;
	
	@NotNull
	@Column(columnDefinition = "TEXT")
	private String answer3;
	
	@NotNull
	@Column(columnDefinition = "TEXT")
	private String rightAnswer;
	
	public Question() {}

	public Question(String category, String quest, String answer1, String answer2, String answer3,
			String rightAnswer) {
		this.quest = quest;
		this.answer1 = answer1;
		this.answer2 = answer2;
		this.answer3 = answer3;
		this.rightAnswer = rightAnswer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getQuest() {
		return quest;
	}

	public void setQuest(String quest) {
		this.quest = quest;
	}

	public String getAnswer1() {
		return answer1;
	}

	public void setAnswer1(String answer1) {
		this.answer1 = answer1;
	}

	public String getAnswer2() {
		return answer2;
	}

	public void setAnswer2(String answer2) {
		this.answer2 = answer2;
	}

	public String getAnswer3() {
		return answer3;
	}

	public void setAnswer3(String answer3) {
		this.answer3 = answer3;
	}

	public String getRightAnswer() {
		return rightAnswer;
	}

	public void setRightAnswer(String rightAnswer) {
		this.rightAnswer = rightAnswer;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
