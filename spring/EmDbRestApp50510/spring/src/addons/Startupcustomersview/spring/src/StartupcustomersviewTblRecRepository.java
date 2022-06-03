package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.StartupcustomersviewTblRec; 
 
public interface StartupcustomersviewTblRecRepository extends JpaRepository<StartupcustomersviewTblRec, String> { 
	List<StartupcustomersviewTblRec> findById(long id); 
	//List<StartupcustomersviewTblRec> findByIdLike(long id); 
	//List<StartupcustomersviewTblRec> findByIdContaining(long id); 
	//List<StartupcustomersviewTblRec> findByIdAndId(long id, long id); 
	Long deleteById(long id); 
} 
 
