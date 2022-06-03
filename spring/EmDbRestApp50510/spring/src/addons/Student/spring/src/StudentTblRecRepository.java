package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.StudentTblRec; 
 
public interface StudentTblRecRepository extends JpaRepository<StudentTblRec, String> { 
	List<StudentTblRec> findByName(String name); 
	//List<StudentTblRec> findByNameLike(String name); 
	//List<StudentTblRec> findByNameContaining(String name); 
	//List<StudentTblRec> findByNameAndName(String name, String name); 
	Long deleteByName(String name); 
} 
 
