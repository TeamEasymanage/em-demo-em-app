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
 
import emrest.spring.RecruitingallemployeesTblRec; 
import emrest.spring.RecruitingallemployeesTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class RecruitingallemployeesTblRecDataRestController { 
 
	@Autowired 
	RecruitingallemployeesTblRecRepository RecruitingallemployeesTblRec1Repository; 
 
@GetMapping("recruiting_all_employees/ViewAll")  
public ResponseEntity<List<RecruitingallemployeesTblRec>> RecruitingallemployeesTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<RecruitingallemployeesTblRec> RecruitingallemployeesTblRecList = new ArrayList<RecruitingallemployeesTblRec>(); 
 
		RecruitingallemployeesTblRec1Repository.findAll().forEach(RecruitingallemployeesTblRecList::add); 
		//RecruitingallemployeesTblRec1Repository.findByColumnName(columnVal).forEach(RecruitingallemployeesTblRecList::add); 
 
	if (RecruitingallemployeesTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(RecruitingallemployeesTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("recruiting_all_employees/Create")  
public ResponseEntity<RecruitingallemployeesTblRec> RecruitingallemployeesTblRecCreate(@RequestBody RecruitingallemployeesTblRec RecruitingallemployeesTblRec1)  
	throws Exception 
	{   
	try { 
	RecruitingallemployeesTblRec _RecruitingallemployeesTblRec = RecruitingallemployeesTblRec1Repository 
			.save(RecruitingallemployeesTblRec1); 
	return new ResponseEntity<>(_RecruitingallemployeesTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("recruiting_all_employees/Query")  
public ResponseEntity<List<RecruitingallemployeesTblRec>> RecruitingallemployeesTblRecQuery(@RequestParam long id)  
	throws Exception 
	{   
	try { 
	List<RecruitingallemployeesTblRec> RecruitingallemployeesTblRecList = new ArrayList<RecruitingallemployeesTblRec>(); 
 
		//RecruitingallemployeesTblRec1Repository.findAll().forEach(RecruitingallemployeesTblRecList::add); 
		RecruitingallemployeesTblRec1Repository.findById(id).forEach(RecruitingallemployeesTblRecList::add); 
 
	if (RecruitingallemployeesTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(RecruitingallemployeesTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("recruiting_all_employees/Update")  
public ResponseEntity<RecruitingallemployeesTblRec> RecruitingallemployeesTblRecUpdate(@RequestParam long id, @RequestBody RecruitingallemployeesTblRec RecruitingallemployeesTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<RecruitingallemployeesTblRec> RecruitingallemployeesTblRecRec1 = RecruitingallemployeesTblRec1Repository.findById(id); 
 
		if (RecruitingallemployeesTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		RecruitingallemployeesTblRec RecruitingallemployeesTblRecRec1First = RecruitingallemployeesTblRecRec1.get(0); 
		RecruitingallemployeesTblRec _RecruitingallemployeesTblRec = RecruitingallemployeesTblRec1Repository  
						.save(RecruitingallemployeesTblRec1);  
		return new ResponseEntity<>(_RecruitingallemployeesTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("recruiting_all_employees/Delete")  
public ResponseEntity<Long> RecruitingallemployeesTblRecDelete(@RequestParam long id)  
	throws Exception 
	{   
	try { 
 
	Long delCount = RecruitingallemployeesTblRec1Repository 
			.deleteById(id); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
