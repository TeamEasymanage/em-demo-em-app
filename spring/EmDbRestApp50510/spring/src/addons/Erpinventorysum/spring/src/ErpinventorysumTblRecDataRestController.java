package emrest.spring; 
 
import java.util.*; 
 
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.http.HttpStatus; 
import org.springframework.http.ResponseEntity; 
import org.springframework.web.bind.annotation.CrossOrigin; 
import org.springframework.web.bind.annotation.DeleteMapping; 
import org.springframework.web.bind.annotation.GetMapping; 
import org.springframework.web.bind.annotation.PathVariable; 
import org.springframework.web.bind.annotation.PostMapping; 
import org.springframework.web.bind.annotation.PutMapping; 
import org.springframework.web.bind.annotation.RequestBody; 
import org.springframework.web.bind.annotation.RequestMapping; 
import org.springframework.web.bind.annotation.RequestParam; 
import org.springframework.web.bind.annotation.RestController; 
import org.springframework.transaction.annotation.Transactional; 
import org.springframework.format.annotation.DateTimeFormat; 
 
import emrest.spring.ErpinventorysumTblRec; 
import emrest.spring.ErpinventorysumTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class ErpinventorysumTblRecDataRestController { 
 
	@Autowired 
	ErpinventorysumTblRecRepository ErpinventorysumTblRec1Repository; 
 
@GetMapping("erp_inventory_sum/ViewAll")  
public ResponseEntity<List<ErpinventorysumTblRec>> ErpinventorysumTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<ErpinventorysumTblRec> ErpinventorysumTblRecList = new ArrayList<ErpinventorysumTblRec>(); 
 
		ErpinventorysumTblRec1Repository.findAll().forEach(ErpinventorysumTblRecList::add); 
		//ErpinventorysumTblRec1Repository.findByColumnName(columnVal).forEach(ErpinventorysumTblRecList::add); 
 
	if (ErpinventorysumTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(ErpinventorysumTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("erp_inventory_sum/Create")  
public ResponseEntity<ErpinventorysumTblRec> ErpinventorysumTblRecCreate(@RequestBody ErpinventorysumTblRec ErpinventorysumTblRec1)  
	throws Exception 
	{   
	try { 
	ErpinventorysumTblRec _ErpinventorysumTblRec = ErpinventorysumTblRec1Repository 
			.save(ErpinventorysumTblRec1); 
	return new ResponseEntity<>(_ErpinventorysumTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("erp_inventory_sum/Query")  
public ResponseEntity<List<ErpinventorysumTblRec>> ErpinventorysumTblRecQuery(@RequestParam long year)  
	throws Exception 
	{   
	try { 
	List<ErpinventorysumTblRec> ErpinventorysumTblRecList = new ArrayList<ErpinventorysumTblRec>(); 
 
		//ErpinventorysumTblRec1Repository.findAll().forEach(ErpinventorysumTblRecList::add); 
		ErpinventorysumTblRec1Repository.findByYear(year).forEach(ErpinventorysumTblRecList::add); 
 
	if (ErpinventorysumTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(ErpinventorysumTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("erp_inventory_sum/Update")  
public ResponseEntity<ErpinventorysumTblRec> ErpinventorysumTblRecUpdate(@RequestParam long year, @RequestBody ErpinventorysumTblRec ErpinventorysumTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<ErpinventorysumTblRec> ErpinventorysumTblRecRec1 = ErpinventorysumTblRec1Repository.findByYear(year); 
 
		if (ErpinventorysumTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		ErpinventorysumTblRec ErpinventorysumTblRecRec1First = ErpinventorysumTblRecRec1.get(0); 
		ErpinventorysumTblRec _ErpinventorysumTblRec = ErpinventorysumTblRec1Repository  
						.save(ErpinventorysumTblRec1);  
		return new ResponseEntity<>(_ErpinventorysumTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("erp_inventory_sum/Delete")  
public ResponseEntity<Long> ErpinventorysumTblRecDelete(@RequestParam long year)  
	throws Exception 
	{   
	try { 
 
	Long delCount = ErpinventorysumTblRec1Repository 
			.deleteByYear(year); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
