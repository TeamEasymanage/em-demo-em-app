package emrest.spring; 
 
import javax.persistence.*; 
import java.util.*; 
import com.fasterxml.jackson.annotation.JsonFormat; 
 
@Entity 
@Table(name = "creative_talent_role") 
public class CreativetalentroleTblRec { 
 
	@Id 
	@Column(name = "id") 
	private long id; 
 
	@Column(name = "full_name") 
	private String fullName; 
 
	@Column(name = "role") 
	private String role; 
 
	@Column(name = "category") 
	private String category; 
 
	@Column(name = "skills") 
	private String skills; 
 
	@Column(name = "availability_date") 
	@JsonFormat(pattern="yyyy-MM-dd")
	private Calendar availabilityDate; 
 
	@Column(name = "region") 
	private String region; 
 
	@Column(name = "manager") 
	private String manager; 
 
	@Column(name = "portfolio") 
	private String portfolio; 
 
	@Column(name = "email") 
	private String email; 
 
	@Column(name = "phone") 
	private String phone; 
 
 
public CreativetalentroleTblRec() { 
 
} 
 
public CreativetalentroleTblRec(  
  long id 
 , String fullName 
 , String role 
 , String category 
 , String skills 
 , Calendar availabilityDate 
 , String region 
 , String manager 
 , String portfolio 
 , String email 
 , String phone 
 ) { 
	this.id = id; 
	this.fullName = fullName; 
	this.role = role; 
	this.category = category; 
	this.skills = skills; 
	this.availabilityDate = availabilityDate; 
	this.region = region; 
	this.manager = manager; 
	this.portfolio = portfolio; 
	this.email = email; 
	this.phone = phone; 
} 
 
public long getId() { return this.id; } 
public String getFullName() { return this.fullName; } 
public String getRole() { return this.role; } 
public String getCategory() { return this.category; } 
public String getSkills() { return this.skills; } 
public Calendar getAvailabilityDate() { return this.availabilityDate; } 
public String getRegion() { return this.region; } 
public String getManager() { return this.manager; } 
public String getPortfolio() { return this.portfolio; } 
public String getEmail() { return this.email; } 
public String getPhone() { return this.phone; } 
 
public void setId(long id ) { this.id = id; } 
public void setFullName(String fullName ) { this.fullName = fullName; } 
public void setRole(String role ) { this.role = role; } 
public void setCategory(String category ) { this.category = category; } 
public void setSkills(String skills ) { this.skills = skills; } 
public void setAvailabilityDate(Calendar availabilityDate ) { this.availabilityDate = availabilityDate; } 
public void setRegion(String region ) { this.region = region; } 
public void setManager(String manager ) { this.manager = manager; } 
public void setPortfolio(String portfolio ) { this.portfolio = portfolio; } 
public void setEmail(String email ) { this.email = email; } 
public void setPhone(String phone ) { this.phone = phone; } 
 
 
@Override 
public String toString() { 
	return "CreativetalentroleTblRec [ id = "+this.id+" ]"; 
} 
 
} 
 
