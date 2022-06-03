package emrest.spring; 
 
import javax.persistence.*; 
import java.util.*; 
import com.fasterxml.jackson.annotation.JsonFormat; 
 
@Entity 
@Table(name = "recruiting_all_employees") 
public class RecruitingallemployeesTblRec { 
 
	@Id 
	@Column(name = "id") 
	private long id; 
 
	@Column(name = "name") 
	private String name; 
 
	@Column(name = "location") 
	private String location; 
 
	@Column(name = "title") 
	private String title; 
 
	@Column(name = "status") 
	private String status; 
 
	@Column(name = "start_date") 
	@JsonFormat(pattern="yyyy-MM-dd")
	private Calendar startDate; 
 
	@Column(name = "department") 
	private String department; 
 
	@Column(name = "reports_to") 
	private String reportsTo; 
 
	@Column(name = "email_address") 
	private String emailAddress; 
 
	@Column(name = "dob") 
	@JsonFormat(pattern="yyyy-MM-dd")
	private Calendar dob; 
 
 
public RecruitingallemployeesTblRec() { 
 
} 
 
public RecruitingallemployeesTblRec(  
  long id 
 , String name 
 , String location 
 , String title 
 , String status 
 , Calendar startDate 
 , String department 
 , String reportsTo 
 , String emailAddress 
 , Calendar dob 
 ) { 
	this.id = id; 
	this.name = name; 
	this.location = location; 
	this.title = title; 
	this.status = status; 
	this.startDate = startDate; 
	this.department = department; 
	this.reportsTo = reportsTo; 
	this.emailAddress = emailAddress; 
	this.dob = dob; 
} 
 
public long getId() { return this.id; } 
public String getName() { return this.name; } 
public String getLocation() { return this.location; } 
public String getTitle() { return this.title; } 
public String getStatus() { return this.status; } 
public Calendar getStartDate() { return this.startDate; } 
public String getDepartment() { return this.department; } 
public String getReportsTo() { return this.reportsTo; } 
public String getEmailAddress() { return this.emailAddress; } 
public Calendar getDob() { return this.dob; } 
 
public void setId(long id ) { this.id = id; } 
public void setName(String name ) { this.name = name; } 
public void setLocation(String location ) { this.location = location; } 
public void setTitle(String title ) { this.title = title; } 
public void setStatus(String status ) { this.status = status; } 
public void setStartDate(Calendar startDate ) { this.startDate = startDate; } 
public void setDepartment(String department ) { this.department = department; } 
public void setReportsTo(String reportsTo ) { this.reportsTo = reportsTo; } 
public void setEmailAddress(String emailAddress ) { this.emailAddress = emailAddress; } 
public void setDob(Calendar dob ) { this.dob = dob; } 
 
 
@Override 
public String toString() { 
	return "RecruitingallemployeesTblRec [ id = "+this.id+" ]"; 
} 
 
} 
 
