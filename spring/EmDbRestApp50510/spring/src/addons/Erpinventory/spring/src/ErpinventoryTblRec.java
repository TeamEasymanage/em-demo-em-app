package emrest.spring; 
 
import javax.persistence.*; 
import java.util.*; 
import com.fasterxml.jackson.annotation.JsonFormat; 
 
@Entity 
@Table(name = "erp_inventory") 
public class ErpinventoryTblRec { 
 
	@Id 
	@Column(name = "inventory_id") 
	private long inventoryId; 
 
	@Column(name = "inv_location") 
	private String invLocation; 
 
	@Column(name = "inv_date") 
	@JsonFormat(pattern="yyyy-MM-dd HH:mm")
	private Calendar invDate; 
 
	@Column(name = "inv_qty") 
	private long invQty; 
 
	@Column(name = "inv_min_qty") 
	private long invMinQty; 
 
	@Column(name = "inv_cost") 
	private float invCost; 
 
 
public ErpinventoryTblRec() { 
 
} 
 
public ErpinventoryTblRec(  
  long inventoryId 
 , String invLocation 
 , Calendar invDate 
 , long invQty 
 , long invMinQty 
 , float invCost 
 ) { 
	this.inventoryId = inventoryId; 
	this.invLocation = invLocation; 
	this.invDate = invDate; 
	this.invQty = invQty; 
	this.invMinQty = invMinQty; 
	this.invCost = invCost; 
} 
 
public long getInventoryId() { return this.inventoryId; } 
public String getInvLocation() { return this.invLocation; } 
public Calendar getInvDate() { return this.invDate; } 
public long getInvQty() { return this.invQty; } 
public long getInvMinQty() { return this.invMinQty; } 
public float getInvCost() { return this.invCost; } 
 
public void setInventoryId(long inventoryId ) { this.inventoryId = inventoryId; } 
public void setInvLocation(String invLocation ) { this.invLocation = invLocation; } 
public void setInvDate(Calendar invDate ) { this.invDate = invDate; } 
public void setInvQty(long invQty ) { this.invQty = invQty; } 
public void setInvMinQty(long invMinQty ) { this.invMinQty = invMinQty; } 
public void setInvCost(float invCost ) { this.invCost = invCost; } 
 
 
@Override 
public String toString() { 
	return "ErpinventoryTblRec [ inventoryId = "+this.inventoryId+" ]"; 
} 
 
} 
 
