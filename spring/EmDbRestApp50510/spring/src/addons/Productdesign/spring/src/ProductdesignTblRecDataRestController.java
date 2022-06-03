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
 
import emrest.spring.ProductdesignTblRec; 
import emrest.spring.ProductdesignTblRecRepository; 
 
@CrossOrigin  
@RestController 
@RequestMapping("/emdbrest")  
public class ProductdesignTblRecDataRestController { 
 
	@Autowired 
	ProductdesignTblRecRepository ProductdesignTblRec1Repository; 
 
@GetMapping("product_design/ViewAll")  
public ResponseEntity<List<ProductdesignTblRec>> ProductdesignTblRecViewAll()  
	throws Exception 
	{   
	try { 
	List<ProductdesignTblRec> ProductdesignTblRecList = new ArrayList<ProductdesignTblRec>(); 
 
		ProductdesignTblRec1Repository.findAll().forEach(ProductdesignTblRecList::add); 
		//ProductdesignTblRec1Repository.findByColumnName(columnVal).forEach(ProductdesignTblRecList::add); 
 
	if (ProductdesignTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(ProductdesignTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PostMapping("product_design/Create")  
public ResponseEntity<ProductdesignTblRec> ProductdesignTblRecCreate(@RequestBody ProductdesignTblRec ProductdesignTblRec1)  
	throws Exception 
	{   
	try { 
	ProductdesignTblRec _ProductdesignTblRec = ProductdesignTblRec1Repository 
			.save(ProductdesignTblRec1); 
	return new ResponseEntity<>(_ProductdesignTblRec, HttpStatus.CREATED); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
  
@GetMapping("product_design/Query")  
public ResponseEntity<List<ProductdesignTblRec>> ProductdesignTblRecQuery(@RequestParam long id)  
	throws Exception 
	{   
	try { 
	List<ProductdesignTblRec> ProductdesignTblRecList = new ArrayList<ProductdesignTblRec>(); 
 
		//ProductdesignTblRec1Repository.findAll().forEach(ProductdesignTblRecList::add); 
		ProductdesignTblRec1Repository.findById(id).forEach(ProductdesignTblRecList::add); 
 
	if (ProductdesignTblRecList.isEmpty()) { 
		return new ResponseEntity<>(HttpStatus.NO_CONTENT); 
	} 
 
	return new ResponseEntity<>(ProductdesignTblRecList, HttpStatus.OK); 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@PutMapping("product_design/Update")  
public ResponseEntity<ProductdesignTblRec> ProductdesignTblRecUpdate(@RequestParam long id, @RequestBody ProductdesignTblRec ProductdesignTblRec1)  
	throws Exception 
	{   
	try { 
 
		List<ProductdesignTblRec> ProductdesignTblRecRec1 = ProductdesignTblRec1Repository.findById(id); 
 
		if (ProductdesignTblRecRec1.isEmpty()) {  
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);  
		}  
 
		ProductdesignTblRec ProductdesignTblRecRec1First = ProductdesignTblRecRec1.get(0); 
		ProductdesignTblRec _ProductdesignTblRec = ProductdesignTblRec1Repository  
						.save(ProductdesignTblRec1);  
		return new ResponseEntity<>(_ProductdesignTblRec, HttpStatus.OK);  
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
@Transactional 
@DeleteMapping("product_design/Delete")  
public ResponseEntity<Long> ProductdesignTblRecDelete(@RequestParam long id)  
	throws Exception 
	{   
	try { 
 
	Long delCount = ProductdesignTblRec1Repository 
			.deleteById(id); 
			//.deleteAll(); 
	return new ResponseEntity<>(delCount, HttpStatus.OK); 
 
	} catch (Exception e) { 
		return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); 
	} 
} 
 
} 
 
