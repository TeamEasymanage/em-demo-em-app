package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.EventinvitationviewTblRec; 
 
public interface EventinvitationviewTblRecRepository extends JpaRepository<EventinvitationviewTblRec, String> { 
	List<EventinvitationviewTblRec> findById(long id); 
	//List<EventinvitationviewTblRec> findByIdLike(long id); 
	//List<EventinvitationviewTblRec> findByIdContaining(long id); 
	//List<EventinvitationviewTblRec> findByIdAndId(long id, long id); 
	Long deleteById(long id); 
} 
 
