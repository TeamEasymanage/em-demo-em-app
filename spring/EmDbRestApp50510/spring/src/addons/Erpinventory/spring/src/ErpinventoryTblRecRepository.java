package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.ErpinventoryTblRec; 
 
public interface ErpinventoryTblRecRepository extends JpaRepository<ErpinventoryTblRec, String> { 
	List<ErpinventoryTblRec> findByInventoryId(long inventoryId); 
	//List<ErpinventoryTblRec> findByInventoryIdLike(long inventoryId); 
	//List<ErpinventoryTblRec> findByInventoryIdContaining(long inventoryId); 
	//List<ErpinventoryTblRec> findByInventoryIdAndInventoryId(long inventoryId, long inventoryId); 
	Long deleteByInventoryId(long inventoryId); 
} 
 
