package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.HobbiesartviewTblRec; 
 
public interface HobbiesartviewTblRecRepository extends JpaRepository<HobbiesartviewTblRec, String> { 
	List<HobbiesartviewTblRec> findById(long id); 
	//List<HobbiesartviewTblRec> findByIdLike(long id); 
	//List<HobbiesartviewTblRec> findByIdContaining(long id); 
	//List<HobbiesartviewTblRec> findByIdAndId(long id, long id); 
	Long deleteById(long id); 
} 
 
