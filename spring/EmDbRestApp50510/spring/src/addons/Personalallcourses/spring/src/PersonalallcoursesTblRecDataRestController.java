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
 
import emrest.spring.PersonalallcoursesTblRec; 
import emrest.spring.PersonalallcoursesTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class PersonalallcoursesTblRecDataRestController { 
 
	@Autowired 
	PersonalallcoursesTblRecRepository PersonalallcoursesTblRec1Repository; 
 
@GetMapping("personal_all_courses/ViewAll")  
public ResponseEntity<List<PersonalallcoursesTblRec>> PersonalallcoursesTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<PersonalallcoursesTblRec> PersonalallcoursesTblRecList = new ArrayList<PersonalallcoursesTblRec>(); 
 
		PersonalallcoursesTblRec1Repository.findAll().forEach(PersonalallcoursesTblRecList::add); 
		//PersonalallcoursesTblRec1Repository.findByColumnName(columnVal).forEach(PersonalallcoursesTblRecList::add); 
 
	if (PersonalallcoursesTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(PersonalallcoursesTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("personal_all_courses/Create")  
public ResponseEntity<PersonalallcoursesTblRec> PersonalallcoursesTblRecCreate(@RequestBody PersonalallcoursesTblRec PersonalallcoursesTblRec1)  
	throws Exception 
	{   
	try { 
	PersonalallcoursesTblRec _PersonalallcoursesTblRec = PersonalallcoursesTblRec1Repository 
			.save(PersonalallcoursesTblRec1); 
	return new ResponseEntity<>(_PersonalallcoursesTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("personal_all_courses/Query")  
public ResponseEntity<List<PersonalallcoursesTblRec>> PersonalallcoursesTblRecQuery(@RequestParam long id)  
	throws Exception 
	{   
	try { 
	List<PersonalallcoursesTblRec> PersonalallcoursesTblRecList = new ArrayList<PersonalallcoursesTblRec>(); 
 
		//PersonalallcoursesTblRec1Repository.findAll().forEach(PersonalallcoursesTblRecList::add); 
		PersonalallcoursesTblRec1Repository.findById(id).forEach(PersonalallcoursesTblRecList::add); 
 
	if (PersonalallcoursesTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(PersonalallcoursesTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("personal_all_courses/Update")  
public ResponseEntity<PersonalallcoursesTblRec> PersonalallcoursesTblRecUpdate(@RequestParam long id, @RequestBody PersonalallcoursesTblRec PersonalallcoursesTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<PersonalallcoursesTblRec> PersonalallcoursesTblRecRec1 = PersonalallcoursesTblRec1Repository.findById(id); 
 
		if (PersonalallcoursesTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		PersonalallcoursesTblRec PersonalallcoursesTblRecRec1First = PersonalallcoursesTblRecRec1.get(0); 
		PersonalallcoursesTblRec _PersonalallcoursesTblRec = PersonalallcoursesTblRec1Repository  
						.save(PersonalallcoursesTblRec1);  
		return new ResponseEntity<>(_PersonalallcoursesTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("personal_all_courses/Delete")  
public ResponseEntity<Long> PersonalallcoursesTblRecDelete(@RequestParam long id)  
	throws Exception 
	{   
	try { 
 
	Long delCount = PersonalallcoursesTblRec1Repository 
			.deleteById(id); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
