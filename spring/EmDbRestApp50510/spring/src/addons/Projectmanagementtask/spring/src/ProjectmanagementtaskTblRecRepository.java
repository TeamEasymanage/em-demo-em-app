package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.ProjectmanagementtaskTblRec; 
 
public interface ProjectmanagementtaskTblRecRepository extends JpaRepository<ProjectmanagementtaskTblRec, String> { 
	List<ProjectmanagementtaskTblRec> findById(long id); 
	//List<ProjectmanagementtaskTblRec> findByIdLike(long id); 
	//List<ProjectmanagementtaskTblRec> findByIdContaining(long id); 
	//List<ProjectmanagementtaskTblRec> findByIdAndId(long id, long id); 
	Long deleteById(long id); 
} 
 
