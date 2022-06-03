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
 
import emrest.spring.CreativetalentroleTblRec; 
import emrest.spring.CreativetalentroleTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class CreativetalentroleTblRecDataRestController { 
 
	@Autowired 
	CreativetalentroleTblRecRepository CreativetalentroleTblRec1Repository; 
 
@GetMapping("creative_talent_role/ViewAll")  
public ResponseEntity<List<CreativetalentroleTblRec>> CreativetalentroleTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<CreativetalentroleTblRec> CreativetalentroleTblRecList = new ArrayList<CreativetalentroleTblRec>(); 
 
		CreativetalentroleTblRec1Repository.findAll().forEach(CreativetalentroleTblRecList::add); 
		//CreativetalentroleTblRec1Repository.findByColumnName(columnVal).forEach(CreativetalentroleTblRecList::add); 
 
	if (CreativetalentroleTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(CreativetalentroleTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("creative_talent_role/Create")  
public ResponseEntity<CreativetalentroleTblRec> CreativetalentroleTblRecCreate(@RequestBody CreativetalentroleTblRec CreativetalentroleTblRec1)  
	throws Exception 
	{   
	try { 
	CreativetalentroleTblRec _CreativetalentroleTblRec = CreativetalentroleTblRec1Repository 
			.save(CreativetalentroleTblRec1); 
	return new ResponseEntity<>(_CreativetalentroleTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("creative_talent_role/Query")  
public ResponseEntity<List<CreativetalentroleTblRec>> CreativetalentroleTblRecQuery(@RequestParam long id)  
	throws Exception 
	{   
	try { 
	List<CreativetalentroleTblRec> CreativetalentroleTblRecList = new ArrayList<CreativetalentroleTblRec>(); 
 
		//CreativetalentroleTblRec1Repository.findAll().forEach(CreativetalentroleTblRecList::add); 
		CreativetalentroleTblRec1Repository.findById(id).forEach(CreativetalentroleTblRecList::add); 
 
	if (CreativetalentroleTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(CreativetalentroleTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("creative_talent_role/Update")  
public ResponseEntity<CreativetalentroleTblRec> CreativetalentroleTblRecUpdate(@RequestParam long id, @RequestBody CreativetalentroleTblRec CreativetalentroleTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<CreativetalentroleTblRec> CreativetalentroleTblRecRec1 = CreativetalentroleTblRec1Repository.findById(id); 
 
		if (CreativetalentroleTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		CreativetalentroleTblRec CreativetalentroleTblRecRec1First = CreativetalentroleTblRecRec1.get(0); 
		CreativetalentroleTblRec _CreativetalentroleTblRec = CreativetalentroleTblRec1Repository  
						.save(CreativetalentroleTblRec1);  
		return new ResponseEntity<>(_CreativetalentroleTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("creative_talent_role/Delete")  
public ResponseEntity<Long> CreativetalentroleTblRecDelete(@RequestParam long id)  
	throws Exception 
	{   
	try { 
 
	Long delCount = CreativetalentroleTblRec1Repository 
			.deleteById(id); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
