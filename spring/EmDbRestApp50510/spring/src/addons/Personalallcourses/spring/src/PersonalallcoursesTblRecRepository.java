package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.PersonalallcoursesTblRec; 
 
public interface PersonalallcoursesTblRecRepository extends JpaRepository<PersonalallcoursesTblRec, String> { 
	List<PersonalallcoursesTblRec> findById(long id); 
	//List<PersonalallcoursesTblRec> findByIdLike(long id); 
	//List<PersonalallcoursesTblRec> findByIdContaining(long id); 
	//List<PersonalallcoursesTblRec> findByIdAndId(long id, long id); 
	Long deleteById(long id); 
} 
 
