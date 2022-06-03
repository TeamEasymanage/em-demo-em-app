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
 
import emrest.spring.ContentproductionpipelineTblRec; 
import emrest.spring.ContentproductionpipelineTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class ContentproductionpipelineTblRecDataRestController { 
 
	@Autowired 
	ContentproductionpipelineTblRecRepository ContentproductionpipelineTblRec1Repository; 
 
@GetMapping("content_production_pipeline/ViewAll")  
public ResponseEntity<List<ContentproductionpipelineTblRec>> ContentproductionpipelineTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<ContentproductionpipelineTblRec> ContentproductionpipelineTblRecList = new ArrayList<ContentproductionpipelineTblRec>(); 
 
		ContentproductionpipelineTblRec1Repository.findAll().forEach(ContentproductionpipelineTblRecList::add); 
		//ContentproductionpipelineTblRec1Repository.findByColumnName(columnVal).forEach(ContentproductionpipelineTblRecList::add); 
 
	if (ContentproductionpipelineTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(ContentproductionpipelineTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("content_production_pipeline/Create")  
public ResponseEntity<ContentproductionpipelineTblRec> ContentproductionpipelineTblRecCreate(@RequestBody ContentproductionpipelineTblRec ContentproductionpipelineTblRec1)  
	throws Exception 
	{   
	try { 
	ContentproductionpipelineTblRec _ContentproductionpipelineTblRec = ContentproductionpipelineTblRec1Repository 
			.save(ContentproductionpipelineTblRec1); 
	return new ResponseEntity<>(_ContentproductionpipelineTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("content_production_pipeline/Query")  
public ResponseEntity<List<ContentproductionpipelineTblRec>> ContentproductionpipelineTblRecQuery(@RequestParam long id)  
	throws Exception 
	{   
	try { 
	List<ContentproductionpipelineTblRec> ContentproductionpipelineTblRecList = new ArrayList<ContentproductionpipelineTblRec>(); 
 
		//ContentproductionpipelineTblRec1Repository.findAll().forEach(ContentproductionpipelineTblRecList::add); 
		ContentproductionpipelineTblRec1Repository.findById(id).forEach(ContentproductionpipelineTblRecList::add); 
 
	if (ContentproductionpipelineTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(ContentproductionpipelineTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("content_production_pipeline/Update")  
public ResponseEntity<ContentproductionpipelineTblRec> ContentproductionpipelineTblRecUpdate(@RequestParam long id, @RequestBody ContentproductionpipelineTblRec ContentproductionpipelineTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<ContentproductionpipelineTblRec> ContentproductionpipelineTblRecRec1 = ContentproductionpipelineTblRec1Repository.findById(id); 
 
		if (ContentproductionpipelineTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		ContentproductionpipelineTblRec ContentproductionpipelineTblRecRec1First = ContentproductionpipelineTblRecRec1.get(0); 
		ContentproductionpipelineTblRec _ContentproductionpipelineTblRec = ContentproductionpipelineTblRec1Repository  
						.save(ContentproductionpipelineTblRec1);  
		return new ResponseEntity<>(_ContentproductionpipelineTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("content_production_pipeline/Delete")  
public ResponseEntity<Long> ContentproductionpipelineTblRecDelete(@RequestParam long id)  
	throws Exception 
	{   
	try { 
 
	Long delCount = ContentproductionpipelineTblRec1Repository 
			.deleteById(id); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
