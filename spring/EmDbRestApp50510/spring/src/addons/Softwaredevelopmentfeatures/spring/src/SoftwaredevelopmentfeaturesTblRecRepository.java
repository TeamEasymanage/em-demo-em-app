package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.SoftwaredevelopmentfeaturesTblRec; 
 
public interface SoftwaredevelopmentfeaturesTblRecRepository extends JpaRepository<SoftwaredevelopmentfeaturesTblRec, String> { 
	List<SoftwaredevelopmentfeaturesTblRec> findById(long id); 
	//List<SoftwaredevelopmentfeaturesTblRec> findByIdLike(long id); 
	//List<SoftwaredevelopmentfeaturesTblRec> findByIdContaining(long id); 
	//List<SoftwaredevelopmentfeaturesTblRec> findByIdAndId(long id, long id); 
	Long deleteById(long id); 
} 
 
