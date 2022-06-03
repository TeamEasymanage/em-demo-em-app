package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.RecruitingallemployeesTblRec; 
 
public interface RecruitingallemployeesTblRecRepository extends JpaRepository<RecruitingallemployeesTblRec, String> { 
	List<RecruitingallemployeesTblRec> findById(long id); 
	//List<RecruitingallemployeesTblRec> findByIdLike(long id); 
	//List<RecruitingallemployeesTblRec> findByIdContaining(long id); 
	//List<RecruitingallemployeesTblRec> findByIdAndId(long id, long id); 
	Long deleteById(long id); 
} 
 
