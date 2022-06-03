package emrest.spring; 
 
import javax.persistence.*; 
import java.util.*; 
import com.fasterxml.jackson.annotation.JsonFormat; 
 
@Entity 
@Table(name = "erp_inventory_sum") 
public class ErpinventorysumTblRec { 
 
	@Id 
	@Column(name = "year") 
	private long year; 
 
	@Column(name = "month") 
	private long month; 
 
	@Column(name = "total_qty") 
	private float totalQty; 
 
 
public ErpinventorysumTblRec() { 
 
} 
 
public ErpinventorysumTblRec(  
  long year 
 , long month 
 , float totalQty 
 ) { 
	this.year = year; 
	this.month = month; 
	this.totalQty = totalQty; 
} 
 
public long getYear() { return this.year; } 
public long getMonth() { return this.month; } 
public float getTotalQty() { return this.totalQty; } 
 
public void setYear(long year ) { this.year = year; } 
public void setMonth(long month ) { this.month = month; } 
public void setTotalQty(float totalQty ) { this.totalQty = totalQty; } 
 
 
@Override 
public String toString() { 
	return "ErpinventorysumTblRec [ year = "+this.year+" ]"; 
} 
 
} 
 
