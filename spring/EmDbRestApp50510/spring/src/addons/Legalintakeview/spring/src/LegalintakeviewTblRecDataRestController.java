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
 
import emrest.spring.LegalintakeviewTblRec; 
import emrest.spring.LegalintakeviewTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class LegalintakeviewTblRecDataRestController { 
 
	@Autowired 
	LegalintakeviewTblRecRepository LegalintakeviewTblRec1Repository; 
 
@GetMapping("legal_intake_view/ViewAll")  
public ResponseEntity<List<LegalintakeviewTblRec>> LegalintakeviewTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<LegalintakeviewTblRec> LegalintakeviewTblRecList = new ArrayList<LegalintakeviewTblRec>(); 
 
		LegalintakeviewTblRec1Repository.findAll().forEach(LegalintakeviewTblRecList::add); 
		//LegalintakeviewTblRec1Repository.findByColumnName(columnVal).forEach(LegalintakeviewTblRecList::add); 
 
	if (LegalintakeviewTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(LegalintakeviewTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("legal_intake_view/Create")  
public ResponseEntity<LegalintakeviewTblRec> LegalintakeviewTblRecCreate(@RequestBody LegalintakeviewTblRec LegalintakeviewTblRec1)  
	throws Exception 
	{   
	try { 
	LegalintakeviewTblRec _LegalintakeviewTblRec = LegalintakeviewTblRec1Repository 
			.save(LegalintakeviewTblRec1); 
	return new ResponseEntity<>(_LegalintakeviewTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("legal_intake_view/Query")  
public ResponseEntity<List<LegalintakeviewTblRec>> LegalintakeviewTblRecQuery(@RequestParam long id)  
	throws Exception 
	{   
	try { 
	List<LegalintakeviewTblRec> LegalintakeviewTblRecList = new ArrayList<LegalintakeviewTblRec>(); 
 
		//LegalintakeviewTblRec1Repository.findAll().forEach(LegalintakeviewTblRecList::add); 
		LegalintakeviewTblRec1Repository.findById(id).forEach(LegalintakeviewTblRecList::add); 
 
	if (LegalintakeviewTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(LegalintakeviewTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("legal_intake_view/Update")  
public ResponseEntity<LegalintakeviewTblRec> LegalintakeviewTblRecUpdate(@RequestParam long id, @RequestBody LegalintakeviewTblRec LegalintakeviewTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<LegalintakeviewTblRec> LegalintakeviewTblRecRec1 = LegalintakeviewTblRec1Repository.findById(id); 
 
		if (LegalintakeviewTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		LegalintakeviewTblRec LegalintakeviewTblRecRec1First = LegalintakeviewTblRecRec1.get(0); 
		LegalintakeviewTblRec _LegalintakeviewTblRec = LegalintakeviewTblRec1Repository  
						.save(LegalintakeviewTblRec1);  
		return new ResponseEntity<>(_LegalintakeviewTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("legal_intake_view/Delete")  
public ResponseEntity<Long> LegalintakeviewTblRecDelete(@RequestParam long id)  
	throws Exception 
	{   
	try { 
 
	Long delCount = LegalintakeviewTblRec1Repository 
			.deleteById(id); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
