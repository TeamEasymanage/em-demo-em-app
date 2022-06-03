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
 
import emrest.spring.EventinvitationviewTblRec; 
import emrest.spring.EventinvitationviewTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class EventinvitationviewTblRecDataRestController { 
 
	@Autowired 
	EventinvitationviewTblRecRepository EventinvitationviewTblRec1Repository; 
 
@GetMapping("event_invitation_view/ViewAll")  
public ResponseEntity<List<EventinvitationviewTblRec>> EventinvitationviewTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<EventinvitationviewTblRec> EventinvitationviewTblRecList = new ArrayList<EventinvitationviewTblRec>(); 
 
		EventinvitationviewTblRec1Repository.findAll().forEach(EventinvitationviewTblRecList::add); 
		//EventinvitationviewTblRec1Repository.findByColumnName(columnVal).forEach(EventinvitationviewTblRecList::add); 
 
	if (EventinvitationviewTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(EventinvitationviewTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("event_invitation_view/Create")  
public ResponseEntity<EventinvitationviewTblRec> EventinvitationviewTblRecCreate(@RequestBody EventinvitationviewTblRec EventinvitationviewTblRec1)  
	throws Exception 
	{   
	try { 
	EventinvitationviewTblRec _EventinvitationviewTblRec = EventinvitationviewTblRec1Repository 
			.save(EventinvitationviewTblRec1); 
	return new ResponseEntity<>(_EventinvitationviewTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("event_invitation_view/Query")  
public ResponseEntity<List<EventinvitationviewTblRec>> EventinvitationviewTblRecQuery(@RequestParam long id)  
	throws Exception 
	{   
	try { 
	List<EventinvitationviewTblRec> EventinvitationviewTblRecList = new ArrayList<EventinvitationviewTblRec>(); 
 
		//EventinvitationviewTblRec1Repository.findAll().forEach(EventinvitationviewTblRecList::add); 
		EventinvitationviewTblRec1Repository.findById(id).forEach(EventinvitationviewTblRecList::add); 
 
	if (EventinvitationviewTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(EventinvitationviewTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("event_invitation_view/Update")  
public ResponseEntity<EventinvitationviewTblRec> EventinvitationviewTblRecUpdate(@RequestParam long id, @RequestBody EventinvitationviewTblRec EventinvitationviewTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<EventinvitationviewTblRec> EventinvitationviewTblRecRec1 = EventinvitationviewTblRec1Repository.findById(id); 
 
		if (EventinvitationviewTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		EventinvitationviewTblRec EventinvitationviewTblRecRec1First = EventinvitationviewTblRecRec1.get(0); 
		EventinvitationviewTblRec _EventinvitationviewTblRec = EventinvitationviewTblRec1Repository  
						.save(EventinvitationviewTblRec1);  
		return new ResponseEntity<>(_EventinvitationviewTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("event_invitation_view/Delete")  
public ResponseEntity<Long> EventinvitationviewTblRecDelete(@RequestParam long id)  
	throws Exception 
	{   
	try { 
 
	Long delCount = EventinvitationviewTblRec1Repository 
			.deleteById(id); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
