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
 
import emrest.spring.CommunicationsessionsviewTblRec; 
import emrest.spring.CommunicationsessionsviewTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class CommunicationsessionsviewTblRecDataRestController { 
 
	@Autowired 
	CommunicationsessionsviewTblRecRepository CommunicationsessionsviewTblRec1Repository; 
 
@GetMapping("communication_sessions_view/ViewAll")  
public ResponseEntity<List<CommunicationsessionsviewTblRec>> CommunicationsessionsviewTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<CommunicationsessionsviewTblRec> CommunicationsessionsviewTblRecList = new ArrayList<CommunicationsessionsviewTblRec>(); 
 
		CommunicationsessionsviewTblRec1Repository.findAll().forEach(CommunicationsessionsviewTblRecList::add); 
		//CommunicationsessionsviewTblRec1Repository.findByColumnName(columnVal).forEach(CommunicationsessionsviewTblRecList::add); 
 
	if (CommunicationsessionsviewTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(CommunicationsessionsviewTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("communication_sessions_view/Create")  
public ResponseEntity<CommunicationsessionsviewTblRec> CommunicationsessionsviewTblRecCreate(@RequestBody CommunicationsessionsviewTblRec CommunicationsessionsviewTblRec1)  
	throws Exception 
	{   
	try { 
	CommunicationsessionsviewTblRec _CommunicationsessionsviewTblRec = CommunicationsessionsviewTblRec1Repository 
			.save(CommunicationsessionsviewTblRec1); 
	return new ResponseEntity<>(_CommunicationsessionsviewTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("communication_sessions_view/Query")  
public ResponseEntity<List<CommunicationsessionsviewTblRec>> CommunicationsessionsviewTblRecQuery(@RequestParam long id)  
	throws Exception 
	{   
	try { 
	List<CommunicationsessionsviewTblRec> CommunicationsessionsviewTblRecList = new ArrayList<CommunicationsessionsviewTblRec>(); 
 
		//CommunicationsessionsviewTblRec1Repository.findAll().forEach(CommunicationsessionsviewTblRecList::add); 
		CommunicationsessionsviewTblRec1Repository.findById(id).forEach(CommunicationsessionsviewTblRecList::add); 
 
	if (CommunicationsessionsviewTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(CommunicationsessionsviewTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("communication_sessions_view/Update")  
public ResponseEntity<CommunicationsessionsviewTblRec> CommunicationsessionsviewTblRecUpdate(@RequestParam long id, @RequestBody CommunicationsessionsviewTblRec CommunicationsessionsviewTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<CommunicationsessionsviewTblRec> CommunicationsessionsviewTblRecRec1 = CommunicationsessionsviewTblRec1Repository.findById(id); 
 
		if (CommunicationsessionsviewTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		CommunicationsessionsviewTblRec CommunicationsessionsviewTblRecRec1First = CommunicationsessionsviewTblRecRec1.get(0); 
		CommunicationsessionsviewTblRec _CommunicationsessionsviewTblRec = CommunicationsessionsviewTblRec1Repository  
						.save(CommunicationsessionsviewTblRec1);  
		return new ResponseEntity<>(_CommunicationsessionsviewTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("communication_sessions_view/Delete")  
public ResponseEntity<Long> CommunicationsessionsviewTblRecDelete(@RequestParam long id)  
	throws Exception 
	{   
	try { 
 
	Long delCount = CommunicationsessionsviewTblRec1Repository 
			.deleteById(id); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
