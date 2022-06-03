package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.EmployeeTblRec; 
 
public interface EmployeeTblRecRepository extends JpaRepository<EmployeeTblRec, String> { 
	List<EmployeeTblRec> findByName(String name); 
	//List<EmployeeTblRec> findByNameLike(String name); 
	//List<EmployeeTblRec> findByNameContaining(String name); 
	//List<EmployeeTblRec> findByNameAndName(String name, String name); 
	Long deleteByName(String name); 
} 
 
