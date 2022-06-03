package emrest.spring; 
 
import javax.persistence.*; 
import java.util.*; 
import com.fasterxml.jackson.annotation.JsonFormat; 
 
@Entity 
@Table(name = "project_management_task") 
public class ProjectmanagementtaskTblRec { 
 
	@Id 
	@Column(name = "id") 
	private long id; 
 
	@Column(name = "task") 
	private String task; 
 
	@Column(name = "docs") 
	private String docs; 
 
	@Column(name = "team") 
	private String team; 
 
	@Column(name = "owner") 
	private String owner; 
 
	@Column(name = "duedate") 
	@JsonFormat(pattern="yyyy-MM-dd")
	private Calendar duedate; 
 
	@Column(name = "complete") 
	private String complete; 
 
	@Column(name = "notes") 
	private String notes; 
 
 
public ProjectmanagementtaskTblRec() { 
 
} 
 
public ProjectmanagementtaskTblRec(  
  long id 
 , String task 
 , String docs 
 , String team 
 , String owner 
 , Calendar duedate 
 , String complete 
 , String notes 
 ) { 
	this.id = id; 
	this.task = task; 
	this.docs = docs; 
	this.team = team; 
	this.owner = owner; 
	this.duedate = duedate; 
	this.complete = complete; 
	this.notes = notes; 
} 
 
public long getId() { return this.id; } 
public String getTask() { return this.task; } 
public String getDocs() { return this.docs; } 
public String getTeam() { return this.team; } 
public String getOwner() { return this.owner; } 
public Calendar getDuedate() { return this.duedate; } 
public String getComplete() { return this.complete; } 
public String getNotes() { return this.notes; } 
 
public void setId(long id ) { this.id = id; } 
public void setTask(String task ) { this.task = task; } 
public void setDocs(String docs ) { this.docs = docs; } 
public void setTeam(String team ) { this.team = team; } 
public void setOwner(String owner ) { this.owner = owner; } 
public void setDuedate(Calendar duedate ) { this.duedate = duedate; } 
public void setComplete(String complete ) { this.complete = complete; } 
public void setNotes(String notes ) { this.notes = notes; } 
 
 
@Override 
public String toString() { 
	return "ProjectmanagementtaskTblRec [ id = "+this.id+" ]"; 
} 
 
} 
 
