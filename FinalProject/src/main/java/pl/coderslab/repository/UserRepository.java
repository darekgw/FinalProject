package pl.coderslab.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.coderslab.entity.User;

public interface UserRepository extends JpaRepository<User, Integer> {

	List<User> findByOrderByPointsScoredDesc();
	List<User> findFirst10ByOrderByPointsScoredDesc();
	List<User> findByName(String name);
	int countByPointsScoredGreaterThan(double pointsScored);
}
