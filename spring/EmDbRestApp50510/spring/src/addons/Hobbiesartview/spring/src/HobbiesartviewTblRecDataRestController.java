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
 
import emrest.spring.HobbiesartviewTblRec; 
import emrest.spring.HobbiesartviewTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class HobbiesartviewTblRecDataRestController { 
 
	@Autowired 
	HobbiesartviewTblRecRepository HobbiesartviewTblRec1Repository; 
 
@GetMapping("hobbies_art_view/ViewAll")  
public ResponseEntity<List<HobbiesartviewTblRec>> HobbiesartviewTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<HobbiesartviewTblRec> HobbiesartviewTblRecList = new ArrayList<HobbiesartviewTblRec>(); 
 
		HobbiesartviewTblRec1Repository.findAll().forEach(HobbiesartviewTblRecList::add); 
		//HobbiesartviewTblRec1Repository.findByColumnName(columnVal).forEach(HobbiesartviewTblRecList::add); 
 
	if (HobbiesartviewTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(HobbiesartviewTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("hobbies_art_view/Create")  
public ResponseEntity<HobbiesartviewTblRec> HobbiesartviewTblRecCreate(@RequestBody HobbiesartviewTblRec HobbiesartviewTblRec1)  
	throws Exception 
	{   
	try { 
	HobbiesartviewTblRec _HobbiesartviewTblRec = HobbiesartviewTblRec1Repository 
			.save(HobbiesartviewTblRec1); 
	return new ResponseEntity<>(_HobbiesartviewTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("hobbies_art_view/Query")  
public ResponseEntity<List<HobbiesartviewTblRec>> HobbiesartviewTblRecQuery(@RequestParam long id)  
	throws Exception 
	{   
	try { 
	List<HobbiesartviewTblRec> HobbiesartviewTblRecList = new ArrayList<HobbiesartviewTblRec>(); 
 
		//HobbiesartviewTblRec1Repository.findAll().forEach(HobbiesartviewTblRecList::add); 
		HobbiesartviewTblRec1Repository.findById(id).forEach(HobbiesartviewTblRecList::add); 
 
	if (HobbiesartviewTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(HobbiesartviewTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("hobbies_art_view/Update")  
public ResponseEntity<HobbiesartviewTblRec> HobbiesartviewTblRecUpdate(@RequestParam long id, @RequestBody HobbiesartviewTblRec HobbiesartviewTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<HobbiesartviewTblRec> HobbiesartviewTblRecRec1 = HobbiesartviewTblRec1Repository.findById(id); 
 
		if (HobbiesartviewTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		HobbiesartviewTblRec HobbiesartviewTblRecRec1First = HobbiesartviewTblRecRec1.get(0); 
		HobbiesartviewTblRec _HobbiesartviewTblRec = HobbiesartviewTblRec1Repository  
						.save(HobbiesartviewTblRec1);  
		return new ResponseEntity<>(_HobbiesartviewTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("hobbies_art_view/Delete")  
public ResponseEntity<Long> HobbiesartviewTblRecDelete(@RequestParam long id)  
	throws Exception 
	{   
	try { 
 
	Long delCount = HobbiesartviewTblRec1Repository 
			.deleteById(id); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
