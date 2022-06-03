package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.ErpproductTblRec; 
 
public interface ErpproductTblRecRepository extends JpaRepository<ErpproductTblRec, String> { 
	List<ErpproductTblRec> findByProductId(long productId); 
	//List<ErpproductTblRec> findByProductIdLike(long productId); 
	//List<ErpproductTblRec> findByProductIdContaining(long productId); 
	//List<ErpproductTblRec> findByProductIdAndProductId(long productId, long productId); 
	Long deleteByProductId(long productId); 
} 
 
