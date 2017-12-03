package pl.coderslab.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Component;

@Component
@Transactional
public class QuestionDao {

	@PersistenceContext
	EntityManager entityManager;
	
	
		
	
	
}
