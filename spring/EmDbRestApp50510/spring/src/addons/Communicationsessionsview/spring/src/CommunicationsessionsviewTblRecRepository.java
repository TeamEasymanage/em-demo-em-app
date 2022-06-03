package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.CommunicationsessionsviewTblRec; 
 
public interface CommunicationsessionsviewTblRecRepository extends JpaRepository<CommunicationsessionsviewTblRec, String> { 
	List<CommunicationsessionsviewTblRec> findById(long id); 
	//List<CommunicationsessionsviewTblRec> findByIdLike(long id); 
	//List<CommunicationsessionsviewTblRec> findByIdContaining(long id); 
	//List<CommunicationsessionsviewTblRec> findByIdAndId(long id, long id); 
	Long deleteById(long id); 
} 
 
