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
 
import emrest.spring.NonprofitdonationsTblRec; 
import emrest.spring.NonprofitdonationsTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class NonprofitdonationsTblRecDataRestController { 
 
	@Autowired 
	NonprofitdonationsTblRecRepository NonprofitdonationsTblRec1Repository; 
 
@GetMapping("non_profit_donations/ViewAll")  
public ResponseEntity<List<NonprofitdonationsTblRec>> NonprofitdonationsTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<NonprofitdonationsTblRec> NonprofitdonationsTblRecList = new ArrayList<NonprofitdonationsTblRec>(); 
 
		NonprofitdonationsTblRec1Repository.findAll().forEach(NonprofitdonationsTblRecList::add); 
		//NonprofitdonationsTblRec1Repository.findByColumnName(columnVal).forEach(NonprofitdonationsTblRecList::add); 
 
	if (NonprofitdonationsTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(NonprofitdonationsTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("non_profit_donations/Create")  
public ResponseEntity<NonprofitdonationsTblRec> NonprofitdonationsTblRecCreate(@RequestBody NonprofitdonationsTblRec NonprofitdonationsTblRec1)  
	throws Exception 
	{   
	try { 
	NonprofitdonationsTblRec _NonprofitdonationsTblRec = NonprofitdonationsTblRec1Repository 
			.save(NonprofitdonationsTblRec1); 
	return new ResponseEntity<>(_NonprofitdonationsTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("non_profit_donations/Query")  
public ResponseEntity<List<NonprofitdonationsTblRec>> NonprofitdonationsTblRecQuery(@RequestParam long id)  
	throws Exception 
	{   
	try { 
	List<NonprofitdonationsTblRec> NonprofitdonationsTblRecList = new ArrayList<NonprofitdonationsTblRec>(); 
 
		//NonprofitdonationsTblRec1Repository.findAll().forEach(NonprofitdonationsTblRecList::add); 
		NonprofitdonationsTblRec1Repository.findById(id).forEach(NonprofitdonationsTblRecList::add); 
 
	if (NonprofitdonationsTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(NonprofitdonationsTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("non_profit_donations/Update")  
public ResponseEntity<NonprofitdonationsTblRec> NonprofitdonationsTblRecUpdate(@RequestParam long id, @RequestBody NonprofitdonationsTblRec NonprofitdonationsTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<NonprofitdonationsTblRec> NonprofitdonationsTblRecRec1 = NonprofitdonationsTblRec1Repository.findById(id); 
 
		if (NonprofitdonationsTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		NonprofitdonationsTblRec NonprofitdonationsTblRecRec1First = NonprofitdonationsTblRecRec1.get(0); 
		NonprofitdonationsTblRec _NonprofitdonationsTblRec = NonprofitdonationsTblRec1Repository  
						.save(NonprofitdonationsTblRec1);  
		return new ResponseEntity<>(_NonprofitdonationsTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("non_profit_donations/Delete")  
public ResponseEntity<Long> NonprofitdonationsTblRecDelete(@RequestParam long id)  
	throws Exception 
	{   
	try { 
 
	Long delCount = NonprofitdonationsTblRec1Repository 
			.deleteById(id); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
