package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.ErpTblAllFldTypesTblRec; 
 
public interface ErpTblAllFldTypesTblRecRepository extends JpaRepository<ErpTblAllFldTypesTblRec, String> { 
	List<ErpTblAllFldTypesTblRec> findByPersonId(String personId); 
	//List<ErpTblAllFldTypesTblRec> findByPersonIdLike(String personId); 
	//List<ErpTblAllFldTypesTblRec> findByPersonIdContaining(String personId); 
	//List<ErpTblAllFldTypesTblRec> findByPersonIdAndPersonId(String personId, String personId); 
	Long deleteByPersonId(String personId); 
} 
 
