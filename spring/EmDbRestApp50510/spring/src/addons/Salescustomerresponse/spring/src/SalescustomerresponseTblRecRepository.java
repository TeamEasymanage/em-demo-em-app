package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.SalescustomerresponseTblRec; 
 
public interface SalescustomerresponseTblRecRepository extends JpaRepository<SalescustomerresponseTblRec, String> { 
	List<SalescustomerresponseTblRec> findById(long id); 
	//List<SalescustomerresponseTblRec> findByIdLike(long id); 
	//List<SalescustomerresponseTblRec> findByIdContaining(long id); 
	//List<SalescustomerresponseTblRec> findByIdAndId(long id, long id); 
	Long deleteById(long id); 
} 
 
