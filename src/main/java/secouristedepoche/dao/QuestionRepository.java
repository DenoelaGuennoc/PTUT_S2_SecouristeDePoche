package secouristedepoche.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import secouristedepoche.entity.Question;

// This will be AUTO IMPLEMENTED by Spring 

public interface QuestionRepository extends JpaRepository<Question, Integer> {

}