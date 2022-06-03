package emrest.spring; 
 
import javax.persistence.*; 
import java.util.*; 
import com.fasterxml.jackson.annotation.JsonFormat; 
 
@Entity 
@Table(name = "startup_customers_view") 
public class StartupcustomersviewTblRec { 
 
	@Id 
	@Column(name = "id") 
	private long id; 
 
	@Column(name = "name") 
	private String name; 
 
	@Column(name = "email") 
	private String email; 
 
	@Column(name = "person") 
	private String person; 
 
	@Column(name = "usage_type") 
	private String usageType; 
 
	@Column(name = "interview_session") 
	private String interviewSession; 
 
 
public StartupcustomersviewTblRec() { 
 
} 
 
public StartupcustomersviewTblRec(  
  long id 
 , String name 
 , String email 
 , String person 
 , String usageType 
 , String interviewSession 
 ) { 
	this.id = id; 
	this.name = name; 
	this.email = email; 
	this.person = person; 
	this.usageType = usageType; 
	this.interviewSession = interviewSession; 
} 
 
public long getId() { return this.id; } 
public String getName() { return this.name; } 
public String getEmail() { return this.email; } 
public String getPerson() { return this.person; } 
public String getUsageType() { return this.usageType; } 
public String getInterviewSession() { return this.interviewSession; } 
 
public void setId(long id ) { this.id = id; } 
public void setName(String name ) { this.name = name; } 
public void setEmail(String email ) { this.email = email; } 
public void setPerson(String person ) { this.person = person; } 
public void setUsageType(String usageType ) { this.usageType = usageType; } 
public void setInterviewSession(String interviewSession ) { this.interviewSession = interviewSession; } 
 
 
@Override 
public String toString() { 
	return "StartupcustomersviewTblRec [ id = "+this.id+" ]"; 
} 
 
} 
 
