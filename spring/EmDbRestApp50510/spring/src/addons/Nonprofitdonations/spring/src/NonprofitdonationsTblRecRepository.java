package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.NonprofitdonationsTblRec; 
 
public interface NonprofitdonationsTblRecRepository extends JpaRepository<NonprofitdonationsTblRec, String> { 
	List<NonprofitdonationsTblRec> findById(long id); 
	//List<NonprofitdonationsTblRec> findByIdLike(long id); 
	//List<NonprofitdonationsTblRec> findByIdContaining(long id); 
	//List<NonprofitdonationsTblRec> findByIdAndId(long id, long id); 
	Long deleteById(long id); 
} 
 
