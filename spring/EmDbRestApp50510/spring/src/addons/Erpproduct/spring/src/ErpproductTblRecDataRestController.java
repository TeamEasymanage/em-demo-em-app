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
 
import emrest.spring.ErpproductTblRec; 
import emrest.spring.ErpproductTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class ErpproductTblRecDataRestController { 
 
	@Autowired 
	ErpproductTblRecRepository ErpproductTblRec1Repository; 
 
@GetMapping("erp_product/ViewAll")  
public ResponseEntity<List<ErpproductTblRec>> ErpproductTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<ErpproductTblRec> ErpproductTblRecList = new ArrayList<ErpproductTblRec>(); 
 
		ErpproductTblRec1Repository.findAll().forEach(ErpproductTblRecList::add); 
		//ErpproductTblRec1Repository.findByColumnName(columnVal).forEach(ErpproductTblRecList::add); 
 
	if (ErpproductTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(ErpproductTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("erp_product/Create")  
public ResponseEntity<ErpproductTblRec> ErpproductTblRecCreate(@RequestBody ErpproductTblRec ErpproductTblRec1)  
	throws Exception 
	{   
	try { 
	ErpproductTblRec _ErpproductTblRec = ErpproductTblRec1Repository 
			.save(ErpproductTblRec1); 
	return new ResponseEntity<>(_ErpproductTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("erp_product/Query")  
public ResponseEntity<List<ErpproductTblRec>> ErpproductTblRecQuery(@RequestParam long productId)  
	throws Exception 
	{   
	try { 
	List<ErpproductTblRec> ErpproductTblRecList = new ArrayList<ErpproductTblRec>(); 
 
		//ErpproductTblRec1Repository.findAll().forEach(ErpproductTblRecList::add); 
		ErpproductTblRec1Repository.findByProductId(productId).forEach(ErpproductTblRecList::add); 
 
	if (ErpproductTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(ErpproductTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("erp_product/Update")  
public ResponseEntity<ErpproductTblRec> ErpproductTblRecUpdate(@RequestParam long productId, @RequestBody ErpproductTblRec ErpproductTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<ErpproductTblRec> ErpproductTblRecRec1 = ErpproductTblRec1Repository.findByProductId(productId); 
 
		if (ErpproductTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		ErpproductTblRec ErpproductTblRecRec1First = ErpproductTblRecRec1.get(0); 
		ErpproductTblRec _ErpproductTblRec = ErpproductTblRec1Repository  
						.save(ErpproductTblRec1);  
		return new ResponseEntity<>(_ErpproductTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("erp_product/Delete")  
public ResponseEntity<Long> ErpproductTblRecDelete(@RequestParam long productId)  
	throws Exception 
	{   
	try { 
 
	Long delCount = ErpproductTblRec1Repository 
			.deleteByProductId(productId); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
