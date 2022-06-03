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
 
import emrest.spring.StartupcustomersviewTblRec; 
import emrest.spring.StartupcustomersviewTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class StartupcustomersviewTblRecDataRestController { 
 
	@Autowired 
	StartupcustomersviewTblRecRepository StartupcustomersviewTblRec1Repository; 
 
@GetMapping("startup_customers_view/ViewAll")  
public ResponseEntity<List<StartupcustomersviewTblRec>> StartupcustomersviewTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<StartupcustomersviewTblRec> StartupcustomersviewTblRecList = new ArrayList<StartupcustomersviewTblRec>(); 
 
		StartupcustomersviewTblRec1Repository.findAll().forEach(StartupcustomersviewTblRecList::add); 
		//StartupcustomersviewTblRec1Repository.findByColumnName(columnVal).forEach(StartupcustomersviewTblRecList::add); 
 
	if (StartupcustomersviewTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(StartupcustomersviewTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("startup_customers_view/Create")  
public ResponseEntity<StartupcustomersviewTblRec> StartupcustomersviewTblRecCreate(@RequestBody StartupcustomersviewTblRec StartupcustomersviewTblRec1)  
	throws Exception 
	{   
	try { 
	StartupcustomersviewTblRec _StartupcustomersviewTblRec = StartupcustomersviewTblRec1Repository 
			.save(StartupcustomersviewTblRec1); 
	return new ResponseEntity<>(_StartupcustomersviewTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("startup_customers_view/Query")  
public ResponseEntity<List<StartupcustomersviewTblRec>> StartupcustomersviewTblRecQuery(@RequestParam long id)  
	throws Exception 
	{   
	try { 
	List<StartupcustomersviewTblRec> StartupcustomersviewTblRecList = new ArrayList<StartupcustomersviewTblRec>(); 
 
		//StartupcustomersviewTblRec1Repository.findAll().forEach(StartupcustomersviewTblRecList::add); 
		StartupcustomersviewTblRec1Repository.findById(id).forEach(StartupcustomersviewTblRecList::add); 
 
	if (StartupcustomersviewTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(StartupcustomersviewTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("startup_customers_view/Update")  
public ResponseEntity<StartupcustomersviewTblRec> StartupcustomersviewTblRecUpdate(@RequestParam long id, @RequestBody StartupcustomersviewTblRec StartupcustomersviewTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<StartupcustomersviewTblRec> StartupcustomersviewTblRecRec1 = StartupcustomersviewTblRec1Repository.findById(id); 
 
		if (StartupcustomersviewTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		StartupcustomersviewTblRec StartupcustomersviewTblRecRec1First = StartupcustomersviewTblRecRec1.get(0); 
		StartupcustomersviewTblRec _StartupcustomersviewTblRec = StartupcustomersviewTblRec1Repository  
						.save(StartupcustomersviewTblRec1);  
		return new ResponseEntity<>(_StartupcustomersviewTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("startup_customers_view/Delete")  
public ResponseEntity<Long> StartupcustomersviewTblRecDelete(@RequestParam long id)  
	throws Exception 
	{   
	try { 
 
	Long delCount = StartupcustomersviewTblRec1Repository 
			.deleteById(id); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
