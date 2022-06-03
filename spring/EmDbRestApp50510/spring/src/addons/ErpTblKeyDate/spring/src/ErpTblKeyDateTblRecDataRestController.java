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
 
import emrest.spring.ErpTblKeyDateTblRec; 
import emrest.spring.ErpTblKeyDateTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class ErpTblKeyDateTblRecDataRestController { 
 
	@Autowired 
	ErpTblKeyDateTblRecRepository ErpTblKeyDateTblRec1Repository; 
 
@GetMapping("erp_tblkeydate/ViewAll")  
public ResponseEntity<List<ErpTblKeyDateTblRec>> ErpTblKeyDateTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<ErpTblKeyDateTblRec> ErpTblKeyDateTblRecList = new ArrayList<ErpTblKeyDateTblRec>(); 
 
		ErpTblKeyDateTblRec1Repository.findAll().forEach(ErpTblKeyDateTblRecList::add); 
		//ErpTblKeyDateTblRec1Repository.findByColumnName(columnVal).forEach(ErpTblKeyDateTblRecList::add); 
 
	if (ErpTblKeyDateTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(ErpTblKeyDateTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("erp_tblkeydate/Create")  
public ResponseEntity<ErpTblKeyDateTblRec> ErpTblKeyDateTblRecCreate(@RequestBody ErpTblKeyDateTblRec ErpTblKeyDateTblRec1)  
	throws Exception 
	{   
	try { 
	ErpTblKeyDateTblRec _ErpTblKeyDateTblRec = ErpTblKeyDateTblRec1Repository 
			.save(ErpTblKeyDateTblRec1); 
	return new ResponseEntity<>(_ErpTblKeyDateTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("erp_tblkeydate/Query")  
public ResponseEntity<List<ErpTblKeyDateTblRec>> ErpTblKeyDateTblRecQuery(@RequestParam("dateofinquiry") @DateTimeFormat(pattern="yyyy-MM-dd")  Calendar dateofinquiry)  
	throws Exception 
	{   
	try { 
	List<ErpTblKeyDateTblRec> ErpTblKeyDateTblRecList = new ArrayList<ErpTblKeyDateTblRec>(); 
 
		//ErpTblKeyDateTblRec1Repository.findAll().forEach(ErpTblKeyDateTblRecList::add); 
		ErpTblKeyDateTblRec1Repository.findByDateofinquiry(dateofinquiry).forEach(ErpTblKeyDateTblRecList::add); 
 
	if (ErpTblKeyDateTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(ErpTblKeyDateTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("erp_tblkeydate/Update")  
public ResponseEntity<ErpTblKeyDateTblRec> ErpTblKeyDateTblRecUpdate(@RequestParam("dateofinquiry") @DateTimeFormat(pattern="yyyy-MM-dd")  Calendar dateofinquiry, @RequestBody ErpTblKeyDateTblRec ErpTblKeyDateTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<ErpTblKeyDateTblRec> ErpTblKeyDateTblRecRec1 = ErpTblKeyDateTblRec1Repository.findByDateofinquiry(dateofinquiry); 
 
		if (ErpTblKeyDateTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		ErpTblKeyDateTblRec ErpTblKeyDateTblRecRec1First = ErpTblKeyDateTblRecRec1.get(0); 
		ErpTblKeyDateTblRec _ErpTblKeyDateTblRec = ErpTblKeyDateTblRec1Repository  
						.save(ErpTblKeyDateTblRec1);  
		return new ResponseEntity<>(_ErpTblKeyDateTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("erp_tblkeydate/Delete")  
public ResponseEntity<Long> ErpTblKeyDateTblRecDelete(@RequestParam("dateofinquiry") @DateTimeFormat(pattern="yyyy-MM-dd")  Calendar dateofinquiry)  
	throws Exception 
	{   
	try { 
 
	Long delCount = ErpTblKeyDateTblRec1Repository 
			.deleteByDateofinquiry(dateofinquiry); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
