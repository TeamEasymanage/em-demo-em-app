package emrest.spring; 
 
import javax.persistence.*; 
import java.util.*; 
import com.fasterxml.jackson.annotation.JsonFormat; 
 
@Entity 
@Table(name = "employee") 
public class EmployeeTblRec { 
 
	@Id 
	@Column(name = "name") 
	private String name; 
 
	@Column(name = "address") 
	private String address; 
 
	@Column(name = "mobile") 
	private String mobile; 
 
 
public EmployeeTblRec() { 
 
} 
 
public EmployeeTblRec(  
  String name 
 , String address 
 , String mobile 
 ) { 
	this.name = name; 
	this.address = address; 
	this.mobile = mobile; 
} 
 
public String getName() { return this.name; } 
public String getAddress() { return this.address; } 
public String getMobile() { return this.mobile; } 
 
public void setName(String name ) { this.name = name; } 
public void setAddress(String address ) { this.address = address; } 
public void setMobile(String mobile ) { this.mobile = mobile; } 
 
 
@Override 
public String toString() { 
	return "EmployeeTblRec [ name = "+this.name+" ]"; 
} 
 
} 
 
