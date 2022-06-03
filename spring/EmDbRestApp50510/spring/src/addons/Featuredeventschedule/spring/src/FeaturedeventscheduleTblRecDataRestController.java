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
 
import emrest.spring.FeaturedeventscheduleTblRec; 
import emrest.spring.FeaturedeventscheduleTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class FeaturedeventscheduleTblRecDataRestController { 
 
	@Autowired 
	FeaturedeventscheduleTblRecRepository FeaturedeventscheduleTblRec1Repository; 
 
@GetMapping("featured_event_schedule/ViewAll")  
public ResponseEntity<List<FeaturedeventscheduleTblRec>> FeaturedeventscheduleTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<FeaturedeventscheduleTblRec> FeaturedeventscheduleTblRecList = new ArrayList<FeaturedeventscheduleTblRec>(); 
 
		FeaturedeventscheduleTblRec1Repository.findAll().forEach(FeaturedeventscheduleTblRecList::add); 
		//FeaturedeventscheduleTblRec1Repository.findByColumnName(columnVal).forEach(FeaturedeventscheduleTblRecList::add); 
 
	if (FeaturedeventscheduleTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(FeaturedeventscheduleTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("featured_event_schedule/Create")  
public ResponseEntity<FeaturedeventscheduleTblRec> FeaturedeventscheduleTblRecCreate(@RequestBody FeaturedeventscheduleTblRec FeaturedeventscheduleTblRec1)  
	throws Exception 
	{   
	try { 
	FeaturedeventscheduleTblRec _FeaturedeventscheduleTblRec = FeaturedeventscheduleTblRec1Repository 
			.save(FeaturedeventscheduleTblRec1); 
	return new ResponseEntity<>(_FeaturedeventscheduleTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("featured_event_schedule/Query")  
public ResponseEntity<List<FeaturedeventscheduleTblRec>> FeaturedeventscheduleTblRecQuery(@RequestParam long id)  
	throws Exception 
	{   
	try { 
	List<FeaturedeventscheduleTblRec> FeaturedeventscheduleTblRecList = new ArrayList<FeaturedeventscheduleTblRec>(); 
 
		//FeaturedeventscheduleTblRec1Repository.findAll().forEach(FeaturedeventscheduleTblRecList::add); 
		FeaturedeventscheduleTblRec1Repository.findById(id).forEach(FeaturedeventscheduleTblRecList::add); 
 
	if (FeaturedeventscheduleTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(FeaturedeventscheduleTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("featured_event_schedule/Update")  
public ResponseEntity<FeaturedeventscheduleTblRec> FeaturedeventscheduleTblRecUpdate(@RequestParam long id, @RequestBody FeaturedeventscheduleTblRec FeaturedeventscheduleTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<FeaturedeventscheduleTblRec> FeaturedeventscheduleTblRecRec1 = FeaturedeventscheduleTblRec1Repository.findById(id); 
 
		if (FeaturedeventscheduleTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		FeaturedeventscheduleTblRec FeaturedeventscheduleTblRecRec1First = FeaturedeventscheduleTblRecRec1.get(0); 
		FeaturedeventscheduleTblRec _FeaturedeventscheduleTblRec = FeaturedeventscheduleTblRec1Repository  
						.save(FeaturedeventscheduleTblRec1);  
		return new ResponseEntity<>(_FeaturedeventscheduleTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("featured_event_schedule/Delete")  
public ResponseEntity<Long> FeaturedeventscheduleTblRecDelete(@RequestParam long id)  
	throws Exception 
	{   
	try { 
 
	Long delCount = FeaturedeventscheduleTblRec1Repository 
			.deleteById(id); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
