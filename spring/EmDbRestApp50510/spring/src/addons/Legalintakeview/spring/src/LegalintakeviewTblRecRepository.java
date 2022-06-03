package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.LegalintakeviewTblRec; 
 
public interface LegalintakeviewTblRecRepository extends JpaRepository<LegalintakeviewTblRec, String> { 
	List<LegalintakeviewTblRec> findById(long id); 
	//List<LegalintakeviewTblRec> findByIdLike(long id); 
	//List<LegalintakeviewTblRec> findByIdContaining(long id); 
	//List<LegalintakeviewTblRec> findByIdAndId(long id, long id); 
	Long deleteById(long id); 
} 
 
