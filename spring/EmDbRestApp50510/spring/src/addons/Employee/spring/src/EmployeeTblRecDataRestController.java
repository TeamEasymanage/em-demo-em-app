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
 
import emrest.spring.EmployeeTblRec; 
import emrest.spring.EmployeeTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class EmployeeTblRecDataRestController { 
 
	@Autowired 
	EmployeeTblRecRepository EmployeeTblRec1Repository; 
 
@GetMapping("employee/ViewAll")  
public ResponseEntity<List<EmployeeTblRec>> EmployeeTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<EmployeeTblRec> EmployeeTblRecList = new ArrayList<EmployeeTblRec>(); 
 
		EmployeeTblRec1Repository.findAll().forEach(EmployeeTblRecList::add); 
		//EmployeeTblRec1Repository.findByColumnName(columnVal).forEach(EmployeeTblRecList::add); 
 
	if (EmployeeTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(EmployeeTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("employee/Create")  
public ResponseEntity<EmployeeTblRec> EmployeeTblRecCreate(@RequestBody EmployeeTblRec EmployeeTblRec1)  
	throws Exception 
	{   
	try { 
	EmployeeTblRec _EmployeeTblRec = EmployeeTblRec1Repository 
			.save(EmployeeTblRec1); 
	return new ResponseEntity<>(_EmployeeTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("employee/Query")  
public ResponseEntity<List<EmployeeTblRec>> EmployeeTblRecQuery(@RequestParam String name)  
	throws Exception 
	{   
	try { 
	List<EmployeeTblRec> EmployeeTblRecList = new ArrayList<EmployeeTblRec>(); 
 
		//EmployeeTblRec1Repository.findAll().forEach(EmployeeTblRecList::add); 
		EmployeeTblRec1Repository.findByName(name).forEach(EmployeeTblRecList::add); 
 
	if (EmployeeTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(EmployeeTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("employee/Update")  
public ResponseEntity<EmployeeTblRec> EmployeeTblRecUpdate(@RequestParam String name, @RequestBody EmployeeTblRec EmployeeTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<EmployeeTblRec> EmployeeTblRecRec1 = EmployeeTblRec1Repository.findByName(name); 
 
		if (EmployeeTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		EmployeeTblRec EmployeeTblRecRec1First = EmployeeTblRecRec1.get(0); 
		EmployeeTblRec _EmployeeTblRec = EmployeeTblRec1Repository  
						.save(EmployeeTblRec1);  
		return new ResponseEntity<>(_EmployeeTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("employee/Delete")  
public ResponseEntity<Long> EmployeeTblRecDelete(@RequestParam String name)  
	throws Exception 
	{   
	try { 
 
	Long delCount = EmployeeTblRec1Repository 
			.deleteByName(name); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
