package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.CreativetalentroleTblRec; 
 
public interface CreativetalentroleTblRecRepository extends JpaRepository<CreativetalentroleTblRec, String> { 
	List<CreativetalentroleTblRec> findById(long id); 
	//List<CreativetalentroleTblRec> findByIdLike(long id); 
	//List<CreativetalentroleTblRec> findByIdContaining(long id); 
	//List<CreativetalentroleTblRec> findByIdAndId(long id, long id); 
	Long deleteById(long id); 
} 
 
