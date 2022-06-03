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
 
import emrest.spring.SalescustomerresponseTblRec; 
import emrest.spring.SalescustomerresponseTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class SalescustomerresponseTblRecDataRestController { 
 
	@Autowired 
	SalescustomerresponseTblRecRepository SalescustomerresponseTblRec1Repository; 
 
@GetMapping("sales_customer_response/ViewAll")  
public ResponseEntity<List<SalescustomerresponseTblRec>> SalescustomerresponseTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<SalescustomerresponseTblRec> SalescustomerresponseTblRecList = new ArrayList<SalescustomerresponseTblRec>(); 
 
		SalescustomerresponseTblRec1Repository.findAll().forEach(SalescustomerresponseTblRecList::add); 
		//SalescustomerresponseTblRec1Repository.findByColumnName(columnVal).forEach(SalescustomerresponseTblRecList::add); 
 
	if (SalescustomerresponseTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(SalescustomerresponseTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("sales_customer_response/Create")  
public ResponseEntity<SalescustomerresponseTblRec> SalescustomerresponseTblRecCreate(@RequestBody SalescustomerresponseTblRec SalescustomerresponseTblRec1)  
	throws Exception 
	{   
	try { 
	SalescustomerresponseTblRec _SalescustomerresponseTblRec = SalescustomerresponseTblRec1Repository 
			.save(SalescustomerresponseTblRec1); 
	return new ResponseEntity<>(_SalescustomerresponseTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("sales_customer_response/Query")  
public ResponseEntity<List<SalescustomerresponseTblRec>> SalescustomerresponseTblRecQuery(@RequestParam long id)  
	throws Exception 
	{   
	try { 
	List<SalescustomerresponseTblRec> SalescustomerresponseTblRecList = new ArrayList<SalescustomerresponseTblRec>(); 
 
		//SalescustomerresponseTblRec1Repository.findAll().forEach(SalescustomerresponseTblRecList::add); 
		SalescustomerresponseTblRec1Repository.findById(id).forEach(SalescustomerresponseTblRecList::add); 
 
	if (SalescustomerresponseTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(SalescustomerresponseTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("sales_customer_response/Update")  
public ResponseEntity<SalescustomerresponseTblRec> SalescustomerresponseTblRecUpdate(@RequestParam long id, @RequestBody SalescustomerresponseTblRec SalescustomerresponseTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<SalescustomerresponseTblRec> SalescustomerresponseTblRecRec1 = SalescustomerresponseTblRec1Repository.findById(id); 
 
		if (SalescustomerresponseTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		SalescustomerresponseTblRec SalescustomerresponseTblRecRec1First = SalescustomerresponseTblRecRec1.get(0); 
		SalescustomerresponseTblRec _SalescustomerresponseTblRec = SalescustomerresponseTblRec1Repository  
						.save(SalescustomerresponseTblRec1);  
		return new ResponseEntity<>(_SalescustomerresponseTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("sales_customer_response/Delete")  
public ResponseEntity<Long> SalescustomerresponseTblRecDelete(@RequestParam long id)  
	throws Exception 
	{   
	try { 
 
	Long delCount = SalescustomerresponseTblRec1Repository 
			.deleteById(id); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
