package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.ProductdesignTblRec; 
 
public interface ProductdesignTblRecRepository extends JpaRepository<ProductdesignTblRec, String> { 
	List<ProductdesignTblRec> findById(long id); 
	//List<ProductdesignTblRec> findByIdLike(long id); 
	//List<ProductdesignTblRec> findByIdContaining(long id); 
	//List<ProductdesignTblRec> findByIdAndId(long id, long id); 
	Long deleteById(long id); 
} 
 
