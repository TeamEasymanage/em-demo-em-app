package emrest.spring; 
 
import java.util.*; 
import org.springframework.data.jpa.repository.JpaRepository; 
import emrest.spring.ErpinventorysumTblRec; 
 
public interface ErpinventorysumTblRecRepository extends JpaRepository<ErpinventorysumTblRec, String> { 
	List<ErpinventorysumTblRec> findByYear(long year); 
	//List<ErpinventorysumTblRec> findByYearLike(long year); 
	//List<ErpinventorysumTblRec> findByYearContaining(long year); 
	//List<ErpinventorysumTblRec> findByYearAndYear(long year, long year); 
	Long deleteByYear(long year); 
} 
 
