package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.FeaturedeventscheduleTblRec; 
 
public interface FeaturedeventscheduleTblRecRepository extends JpaRepository<FeaturedeventscheduleTblRec, String> { 
	List<FeaturedeventscheduleTblRec> findById(long id); 
	//List<FeaturedeventscheduleTblRec> findByIdLike(long id); 
	//List<FeaturedeventscheduleTblRec> findByIdContaining(long id); 
	//List<FeaturedeventscheduleTblRec> findByIdAndId(long id, long id); 
	Long deleteById(long id); 
} 
 
