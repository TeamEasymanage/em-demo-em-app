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
 
import emrest.spring.StudentTblRec; 
import emrest.spring.StudentTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class StudentTblRecDataRestController { 
 
	@Autowired 
	StudentTblRecRepository StudentTblRec1Repository; 
 
@GetMapping("student/ViewAll")  
public ResponseEntity<List<StudentTblRec>> StudentTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<StudentTblRec> StudentTblRecList = new ArrayList<StudentTblRec>(); 
 
		StudentTblRec1Repository.findAll().forEach(StudentTblRecList::add); 
		//StudentTblRec1Repository.findByColumnName(columnVal).forEach(StudentTblRecList::add); 
 
	if (StudentTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(StudentTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("student/Create")  
public ResponseEntity<StudentTblRec> StudentTblRecCreate(@RequestBody StudentTblRec StudentTblRec1)  
	throws Exception 
	{   
	try { 
	StudentTblRec _StudentTblRec = StudentTblRec1Repository 
			.save(StudentTblRec1); 
	return new ResponseEntity<>(_StudentTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("student/Query")  
public ResponseEntity<List<StudentTblRec>> StudentTblRecQuery(@RequestParam String name)  
	throws Exception 
	{   
	try { 
	List<StudentTblRec> StudentTblRecList = new ArrayList<StudentTblRec>(); 
 
		//StudentTblRec1Repository.findAll().forEach(StudentTblRecList::add); 
		StudentTblRec1Repository.findByName(name).forEach(StudentTblRecList::add); 
 
	if (StudentTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(StudentTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("student/Update")  
public ResponseEntity<StudentTblRec> StudentTblRecUpdate(@RequestParam String name, @RequestBody StudentTblRec StudentTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<StudentTblRec> StudentTblRecRec1 = StudentTblRec1Repository.findByName(name); 
 
		if (StudentTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		StudentTblRec StudentTblRecRec1First = StudentTblRecRec1.get(0); 
		StudentTblRec _StudentTblRec = StudentTblRec1Repository  
						.save(StudentTblRec1);  
		return new ResponseEntity<>(_StudentTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("student/Delete")  
public ResponseEntity<Long> StudentTblRecDelete(@RequestParam String name)  
	throws Exception 
	{   
	try { 
 
	Long delCount = StudentTblRec1Repository 
			.deleteByName(name); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
