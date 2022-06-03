package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.LocalbusinessclientTblRec; 
 
public interface LocalbusinessclientTblRecRepository extends JpaRepository<LocalbusinessclientTblRec, String> { 
	List<LocalbusinessclientTblRec> findById(long id); 
	//List<LocalbusinessclientTblRec> findByIdLike(long id); 
	//List<LocalbusinessclientTblRec> findByIdContaining(long id); 
	//List<LocalbusinessclientTblRec> findByIdAndId(long id, long id); 
	Long deleteById(long id); 
} 
 
