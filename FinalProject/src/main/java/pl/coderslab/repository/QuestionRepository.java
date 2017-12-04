package pl.coderslab.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import pl.coderslab.entity.Question;

public interface QuestionRepository extends JpaRepository<Question, Integer> {

	@Query(value ="select id from questions", nativeQuery = true)
	List<Integer> idList();
	
}
