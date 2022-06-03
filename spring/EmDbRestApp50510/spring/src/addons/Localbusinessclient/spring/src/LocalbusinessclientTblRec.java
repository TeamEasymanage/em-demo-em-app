package emrest.spring; 
 
import javax.persistence.*; 
import java.util.*; 
import com.fasterxml.jackson.annotation.JsonFormat; 
 
@Entity 
@Table(name = "local_business_client") 
public class LocalbusinessclientTblRec { 
 
	@Id 
	@Column(name = "id") 
	private long id; 
 
	@Column(name = "name") 
	private String name; 
 
	@Column(name = "category") 
	private String category; 
 
	@Column(name = "complete") 
	private String complete; 
 
	@Column(name = "project_images") 
	private byte[] projectImages; 
 
	@Column(name = "client") 
	private String client; 
 
	@Column(name = "project_lead") 
	private String projectLead; 
 
	@Column(name = "project_team") 
	private String projectTeam; 
 
	@Column(name = "kick_of_date") 
	@JsonFormat(pattern="yyyy-MM-dd")
	private Calendar kickOfDate; 
 
	@Column(name = "due_date") 
	@JsonFormat(pattern="yyyy-MM-dd")
	private Calendar dueDate; 
 
	@Column(name = "notes") 
	private String notes; 
 
	@Column(name = "tasks") 
	private String tasks; 
 
 
public LocalbusinessclientTblRec() { 
 
} 
 
public LocalbusinessclientTblRec(  
  long id 
 , String name 
 , String category 
 , String complete 
 , byte[] projectImages 
 , String client 
 , String projectLead 
 , String projectTeam 
 , Calendar kickOfDate 
 , Calendar dueDate 
 , String notes 
 , String tasks 
 ) { 
	this.id = id; 
	this.name = name; 
	this.category = category; 
	this.complete = complete; 
	this.projectImages = projectImages; 
	this.client = client; 
	this.projectLead = projectLead; 
	this.projectTeam = projectTeam; 
	this.kickOfDate = kickOfDate; 
	this.dueDate = dueDate; 
	this.notes = notes; 
	this.tasks = tasks; 
} 
 
public long getId() { return this.id; } 
public String getName() { return this.name; } 
public String getCategory() { return this.category; } 
public String getComplete() { return this.complete; } 
public byte[] getProjectImages() { return this.projectImages; } 
public String getClient() { return this.client; } 
public String getProjectLead() { return this.projectLead; } 
public String getProjectTeam() { return this.projectTeam; } 
public Calendar getKickOfDate() { return this.kickOfDate; } 
public Calendar getDueDate() { return this.dueDate; } 
public String getNotes() { return this.notes; } 
public String getTasks() { return this.tasks; } 
 
public void setId(long id ) { this.id = id; } 
public void setName(String name ) { this.name = name; } 
public void setCategory(String category ) { this.category = category; } 
public void setComplete(String complete ) { this.complete = complete; } 
public void setProjectImages(byte[] projectImages ) { this.projectImages = projectImages; } 
public void setClient(String client ) { this.client = client; } 
public void setProjectLead(String projectLead ) { this.projectLead = projectLead; } 
public void setProjectTeam(String projectTeam ) { this.projectTeam = projectTeam; } 
public void setKickOfDate(Calendar kickOfDate ) { this.kickOfDate = kickOfDate; } 
public void setDueDate(Calendar dueDate ) { this.dueDate = dueDate; } 
public void setNotes(String notes ) { this.notes = notes; } 
public void setTasks(String tasks ) { this.tasks = tasks; } 
 
 
@Override 
public String toString() { 
	return "LocalbusinessclientTblRec [ id = "+this.id+" ]"; 
} 
 
} 
 
