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
 
import emrest.spring.ErpinventoryTblRec; 
import emrest.spring.ErpinventoryTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class ErpinventoryTblRecDataRestController { 
 
	@Autowired 
	ErpinventoryTblRecRepository ErpinventoryTblRec1Repository; 
 
@GetMapping("erp_inventory/ViewAll")  
public ResponseEntity<List<ErpinventoryTblRec>> ErpinventoryTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<ErpinventoryTblRec> ErpinventoryTblRecList = new ArrayList<ErpinventoryTblRec>(); 
 
		ErpinventoryTblRec1Repository.findAll().forEach(ErpinventoryTblRecList::add); 
		//ErpinventoryTblRec1Repository.findByColumnName(columnVal).forEach(ErpinventoryTblRecList::add); 
 
	if (ErpinventoryTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(ErpinventoryTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("erp_inventory/Create")  
public ResponseEntity<ErpinventoryTblRec> ErpinventoryTblRecCreate(@RequestBody ErpinventoryTblRec ErpinventoryTblRec1)  
	throws Exception 
	{   
	try { 
	ErpinventoryTblRec _ErpinventoryTblRec = ErpinventoryTblRec1Repository 
			.save(ErpinventoryTblRec1); 
	return new ResponseEntity<>(_ErpinventoryTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("erp_inventory/Query")  
public ResponseEntity<List<ErpinventoryTblRec>> ErpinventoryTblRecQuery(@RequestParam long inventoryId)  
	throws Exception 
	{   
	try { 
	List<ErpinventoryTblRec> ErpinventoryTblRecList = new ArrayList<ErpinventoryTblRec>(); 
 
		//ErpinventoryTblRec1Repository.findAll().forEach(ErpinventoryTblRecList::add); 
		ErpinventoryTblRec1Repository.findByInventoryId(inventoryId).forEach(ErpinventoryTblRecList::add); 
 
	if (ErpinventoryTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(ErpinventoryTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("erp_inventory/Update")  
public ResponseEntity<ErpinventoryTblRec> ErpinventoryTblRecUpdate(@RequestParam long inventoryId, @RequestBody ErpinventoryTblRec ErpinventoryTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<ErpinventoryTblRec> ErpinventoryTblRecRec1 = ErpinventoryTblRec1Repository.findByInventoryId(inventoryId); 
 
		if (ErpinventoryTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		ErpinventoryTblRec ErpinventoryTblRecRec1First = ErpinventoryTblRecRec1.get(0); 
		ErpinventoryTblRec _ErpinventoryTblRec = ErpinventoryTblRec1Repository  
						.save(ErpinventoryTblRec1);  
		return new ResponseEntity<>(_ErpinventoryTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("erp_inventory/Delete")  
public ResponseEntity<Long> ErpinventoryTblRecDelete(@RequestParam long inventoryId)  
	throws Exception 
	{   
	try { 
 
	Long delCount = ErpinventoryTblRec1Repository 
			.deleteByInventoryId(inventoryId); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
