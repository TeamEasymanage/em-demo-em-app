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
 
import emrest.spring.ProjectmanagementtaskTblRec; 
import emrest.spring.ProjectmanagementtaskTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class ProjectmanagementtaskTblRecDataRestController { 
 
	@Autowired 
	ProjectmanagementtaskTblRecRepository ProjectmanagementtaskTblRec1Repository; 
 
@GetMapping("project_management_task/ViewAll")  
public ResponseEntity<List<ProjectmanagementtaskTblRec>> ProjectmanagementtaskTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<ProjectmanagementtaskTblRec> ProjectmanagementtaskTblRecList = new ArrayList<ProjectmanagementtaskTblRec>(); 
 
		ProjectmanagementtaskTblRec1Repository.findAll().forEach(ProjectmanagementtaskTblRecList::add); 
		//ProjectmanagementtaskTblRec1Repository.findByColumnName(columnVal).forEach(ProjectmanagementtaskTblRecList::add); 
 
	if (ProjectmanagementtaskTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(ProjectmanagementtaskTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("project_management_task/Create")  
public ResponseEntity<ProjectmanagementtaskTblRec> ProjectmanagementtaskTblRecCreate(@RequestBody ProjectmanagementtaskTblRec ProjectmanagementtaskTblRec1)  
	throws Exception 
	{   
	try { 
	ProjectmanagementtaskTblRec _ProjectmanagementtaskTblRec = ProjectmanagementtaskTblRec1Repository 
			.save(ProjectmanagementtaskTblRec1); 
	return new ResponseEntity<>(_ProjectmanagementtaskTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("project_management_task/Query")  
public ResponseEntity<List<ProjectmanagementtaskTblRec>> ProjectmanagementtaskTblRecQuery(@RequestParam long id)  
	throws Exception 
	{   
	try { 
	List<ProjectmanagementtaskTblRec> ProjectmanagementtaskTblRecList = new ArrayList<ProjectmanagementtaskTblRec>(); 
 
		//ProjectmanagementtaskTblRec1Repository.findAll().forEach(ProjectmanagementtaskTblRecList::add); 
		ProjectmanagementtaskTblRec1Repository.findById(id).forEach(ProjectmanagementtaskTblRecList::add); 
 
	if (ProjectmanagementtaskTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(ProjectmanagementtaskTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("project_management_task/Update")  
public ResponseEntity<ProjectmanagementtaskTblRec> ProjectmanagementtaskTblRecUpdate(@RequestParam long id, @RequestBody ProjectmanagementtaskTblRec ProjectmanagementtaskTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<ProjectmanagementtaskTblRec> ProjectmanagementtaskTblRecRec1 = ProjectmanagementtaskTblRec1Repository.findById(id); 
 
		if (ProjectmanagementtaskTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		ProjectmanagementtaskTblRec ProjectmanagementtaskTblRecRec1First = ProjectmanagementtaskTblRecRec1.get(0); 
		ProjectmanagementtaskTblRec _ProjectmanagementtaskTblRec = ProjectmanagementtaskTblRec1Repository  
						.save(ProjectmanagementtaskTblRec1);  
		return new ResponseEntity<>(_ProjectmanagementtaskTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("project_management_task/Delete")  
public ResponseEntity<Long> ProjectmanagementtaskTblRecDelete(@RequestParam long id)  
	throws Exception 
	{   
	try { 
 
	Long delCount = ProjectmanagementtaskTblRec1Repository 
			.deleteById(id); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
