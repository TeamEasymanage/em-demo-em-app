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
 
import emrest.spring.SoftwaredevelopmentfeaturesTblRec; 
import emrest.spring.SoftwaredevelopmentfeaturesTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class SoftwaredevelopmentfeaturesTblRecDataRestController { 
 
	@Autowired 
	SoftwaredevelopmentfeaturesTblRecRepository SoftwaredevelopmentfeaturesTblRec1Repository; 
 
@GetMapping("software_development_features/ViewAll")  
public ResponseEntity<List<SoftwaredevelopmentfeaturesTblRec>> SoftwaredevelopmentfeaturesTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<SoftwaredevelopmentfeaturesTblRec> SoftwaredevelopmentfeaturesTblRecList = new ArrayList<SoftwaredevelopmentfeaturesTblRec>(); 
 
		SoftwaredevelopmentfeaturesTblRec1Repository.findAll().forEach(SoftwaredevelopmentfeaturesTblRecList::add); 
		//SoftwaredevelopmentfeaturesTblRec1Repository.findByColumnName(columnVal).forEach(SoftwaredevelopmentfeaturesTblRecList::add); 
 
	if (SoftwaredevelopmentfeaturesTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(SoftwaredevelopmentfeaturesTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("software_development_features/Create")  
public ResponseEntity<SoftwaredevelopmentfeaturesTblRec> SoftwaredevelopmentfeaturesTblRecCreate(@RequestBody SoftwaredevelopmentfeaturesTblRec SoftwaredevelopmentfeaturesTblRec1)  
	throws Exception 
	{   
	try { 
	SoftwaredevelopmentfeaturesTblRec _SoftwaredevelopmentfeaturesTblRec = SoftwaredevelopmentfeaturesTblRec1Repository 
			.save(SoftwaredevelopmentfeaturesTblRec1); 
	return new ResponseEntity<>(_SoftwaredevelopmentfeaturesTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("software_development_features/Query")  
public ResponseEntity<List<SoftwaredevelopmentfeaturesTblRec>> SoftwaredevelopmentfeaturesTblRecQuery(@RequestParam long id)  
	throws Exception 
	{   
	try { 
	List<SoftwaredevelopmentfeaturesTblRec> SoftwaredevelopmentfeaturesTblRecList = new ArrayList<SoftwaredevelopmentfeaturesTblRec>(); 
 
		//SoftwaredevelopmentfeaturesTblRec1Repository.findAll().forEach(SoftwaredevelopmentfeaturesTblRecList::add); 
		SoftwaredevelopmentfeaturesTblRec1Repository.findById(id).forEach(SoftwaredevelopmentfeaturesTblRecList::add); 
 
	if (SoftwaredevelopmentfeaturesTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(SoftwaredevelopmentfeaturesTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("software_development_features/Update")  
public ResponseEntity<SoftwaredevelopmentfeaturesTblRec> SoftwaredevelopmentfeaturesTblRecUpdate(@RequestParam long id, @RequestBody SoftwaredevelopmentfeaturesTblRec SoftwaredevelopmentfeaturesTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<SoftwaredevelopmentfeaturesTblRec> SoftwaredevelopmentfeaturesTblRecRec1 = SoftwaredevelopmentfeaturesTblRec1Repository.findById(id); 
 
		if (SoftwaredevelopmentfeaturesTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		SoftwaredevelopmentfeaturesTblRec SoftwaredevelopmentfeaturesTblRecRec1First = SoftwaredevelopmentfeaturesTblRecRec1.get(0); 
		SoftwaredevelopmentfeaturesTblRec _SoftwaredevelopmentfeaturesTblRec = SoftwaredevelopmentfeaturesTblRec1Repository  
						.save(SoftwaredevelopmentfeaturesTblRec1);  
		return new ResponseEntity<>(_SoftwaredevelopmentfeaturesTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("software_development_features/Delete")  
public ResponseEntity<Long> SoftwaredevelopmentfeaturesTblRecDelete(@RequestParam long id)  
	throws Exception 
	{   
	try { 
 
	Long delCount = SoftwaredevelopmentfeaturesTblRec1Repository 
			.deleteById(id); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
