package pl.coderslab.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

@Component
@Transactional
public class QuestionDao {

	@PersistenceContext
	EntityManager entityManager;
	
	
	
}
