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
 
import emrest.spring.ErpTblAllFldTypesTblRec; 
import emrest.spring.ErpTblAllFldTypesTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class ErpTblAllFldTypesTblRecDataRestController { 
 
	@Autowired 
	ErpTblAllFldTypesTblRecRepository ErpTblAllFldTypesTblRec1Repository; 
 
@GetMapping("erp_tblallfldtypes/ViewAll")  
public ResponseEntity<List<ErpTblAllFldTypesTblRec>> ErpTblAllFldTypesTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<ErpTblAllFldTypesTblRec> ErpTblAllFldTypesTblRecList = new ArrayList<ErpTblAllFldTypesTblRec>(); 
 
		ErpTblAllFldTypesTblRec1Repository.findAll().forEach(ErpTblAllFldTypesTblRecList::add); 
		//ErpTblAllFldTypesTblRec1Repository.findByColumnName(columnVal).forEach(ErpTblAllFldTypesTblRecList::add); 
 
	if (ErpTblAllFldTypesTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(ErpTblAllFldTypesTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("erp_tblallfldtypes/Create")  
public ResponseEntity<ErpTblAllFldTypesTblRec> ErpTblAllFldTypesTblRecCreate(@RequestBody ErpTblAllFldTypesTblRec ErpTblAllFldTypesTblRec1)  
	throws Exception 
	{   
	try { 
	ErpTblAllFldTypesTblRec _ErpTblAllFldTypesTblRec = ErpTblAllFldTypesTblRec1Repository 
			.save(ErpTblAllFldTypesTblRec1); 
	return new ResponseEntity<>(_ErpTblAllFldTypesTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("erp_tblallfldtypes/Query")  
public ResponseEntity<List<ErpTblAllFldTypesTblRec>> ErpTblAllFldTypesTblRecQuery(@RequestParam String personId)  
	throws Exception 
	{   
	try { 
	List<ErpTblAllFldTypesTblRec> ErpTblAllFldTypesTblRecList = new ArrayList<ErpTblAllFldTypesTblRec>(); 
 
		//ErpTblAllFldTypesTblRec1Repository.findAll().forEach(ErpTblAllFldTypesTblRecList::add); 
		ErpTblAllFldTypesTblRec1Repository.findByPersonId(personId).forEach(ErpTblAllFldTypesTblRecList::add); 
 
	if (ErpTblAllFldTypesTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(ErpTblAllFldTypesTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("erp_tblallfldtypes/Update")  
public ResponseEntity<ErpTblAllFldTypesTblRec> ErpTblAllFldTypesTblRecUpdate(@RequestParam String personId, @RequestBody ErpTblAllFldTypesTblRec ErpTblAllFldTypesTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<ErpTblAllFldTypesTblRec> ErpTblAllFldTypesTblRecRec1 = ErpTblAllFldTypesTblRec1Repository.findByPersonId(personId); 
 
		if (ErpTblAllFldTypesTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		ErpTblAllFldTypesTblRec ErpTblAllFldTypesTblRecRec1First = ErpTblAllFldTypesTblRecRec1.get(0); 
		ErpTblAllFldTypesTblRec _ErpTblAllFldTypesTblRec = ErpTblAllFldTypesTblRec1Repository  
						.save(ErpTblAllFldTypesTblRec1);  
		return new ResponseEntity<>(_ErpTblAllFldTypesTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("erp_tblallfldtypes/Delete")  
public ResponseEntity<Long> ErpTblAllFldTypesTblRecDelete(@RequestParam String personId)  
	throws Exception 
	{   
	try { 
 
	Long delCount = ErpTblAllFldTypesTblRec1Repository 
			.deleteByPersonId(personId); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
