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
 
import emrest.spring.LocalbusinessclientTblRec; 
import emrest.spring.LocalbusinessclientTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class LocalbusinessclientTblRecDataRestController { 
 
	@Autowired 
	LocalbusinessclientTblRecRepository LocalbusinessclientTblRec1Repository; 
 
@GetMapping("local_business_client/ViewAll")  
public ResponseEntity<List<LocalbusinessclientTblRec>> LocalbusinessclientTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<LocalbusinessclientTblRec> LocalbusinessclientTblRecList = new ArrayList<LocalbusinessclientTblRec>(); 
 
		LocalbusinessclientTblRec1Repository.findAll().forEach(LocalbusinessclientTblRecList::add); 
		//LocalbusinessclientTblRec1Repository.findByColumnName(columnVal).forEach(LocalbusinessclientTblRecList::add); 
 
	if (LocalbusinessclientTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(LocalbusinessclientTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("local_business_client/Create")  
public ResponseEntity<LocalbusinessclientTblRec> LocalbusinessclientTblRecCreate(@RequestBody LocalbusinessclientTblRec LocalbusinessclientTblRec1)  
	throws Exception 
	{   
	try { 
	LocalbusinessclientTblRec _LocalbusinessclientTblRec = LocalbusinessclientTblRec1Repository 
			.save(LocalbusinessclientTblRec1); 
	return new ResponseEntity<>(_LocalbusinessclientTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("local_business_client/Query")  
public ResponseEntity<List<LocalbusinessclientTblRec>> LocalbusinessclientTblRecQuery(@RequestParam long id)  
	throws Exception 
	{   
	try { 
	List<LocalbusinessclientTblRec> LocalbusinessclientTblRecList = new ArrayList<LocalbusinessclientTblRec>(); 
 
		//LocalbusinessclientTblRec1Repository.findAll().forEach(LocalbusinessclientTblRecList::add); 
		LocalbusinessclientTblRec1Repository.findById(id).forEach(LocalbusinessclientTblRecList::add); 
 
	if (LocalbusinessclientTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(LocalbusinessclientTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("local_business_client/Update")  
public ResponseEntity<LocalbusinessclientTblRec> LocalbusinessclientTblRecUpdate(@RequestParam long id, @RequestBody LocalbusinessclientTblRec LocalbusinessclientTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<LocalbusinessclientTblRec> LocalbusinessclientTblRecRec1 = LocalbusinessclientTblRec1Repository.findById(id); 
 
		if (LocalbusinessclientTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		LocalbusinessclientTblRec LocalbusinessclientTblRecRec1First = LocalbusinessclientTblRecRec1.get(0); 
		LocalbusinessclientTblRec _LocalbusinessclientTblRec = LocalbusinessclientTblRec1Repository  
						.save(LocalbusinessclientTblRec1);  
		return new ResponseEntity<>(_LocalbusinessclientTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("local_business_client/Delete")  
public ResponseEntity<Long> LocalbusinessclientTblRecDelete(@RequestParam long id)  
	throws Exception 
	{   
	try { 
 
	Long delCount = LocalbusinessclientTblRec1Repository 
			.deleteById(id); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
