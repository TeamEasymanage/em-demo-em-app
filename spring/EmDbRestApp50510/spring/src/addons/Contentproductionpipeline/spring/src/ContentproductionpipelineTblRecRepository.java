package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.ContentproductionpipelineTblRec; 
 
public interface ContentproductionpipelineTblRecRepository extends JpaRepository<ContentproductionpipelineTblRec, String> { 
	List<ContentproductionpipelineTblRec> findById(long id); 
	//List<ContentproductionpipelineTblRec> findByIdLike(long id); 
	//List<ContentproductionpipelineTblRec> findByIdContaining(long id); 
	//List<ContentproductionpipelineTblRec> findByIdAndId(long id, long id); 
	Long deleteById(long id); 
} 
 
