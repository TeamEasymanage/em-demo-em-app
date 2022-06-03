package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.ErpTblKeyDateTblRec; 
 
public interface ErpTblKeyDateTblRecRepository extends JpaRepository<ErpTblKeyDateTblRec, String> { 
	List<ErpTblKeyDateTblRec> findByDateofinquiry(Calendar dateofinquiry); 
	//List<ErpTblKeyDateTblRec> findByDateofinquiryLike(Calendar dateofinquiry); 
	//List<ErpTblKeyDateTblRec> findByDateofinquiryContaining(Calendar dateofinquiry); 
	//List<ErpTblKeyDateTblRec> findByDateofinquiryAndDateofinquiry(Calendar dateofinquiry, Calendar dateofinquiry); 
	Long deleteByDateofinquiry(Calendar dateofinquiry); 
} 
 
