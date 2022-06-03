package emrest.spring; 
 
import javax.persistence.*; 
import java.util.*; 
import com.fasterxml.jackson.annotation.JsonFormat; 
 
@Entity 
@Table(name = "content_production_pipeline") 
public class ContentproductionpipelineTblRec { 
 
	@Id 
	@Column(name = "id") 
	private long id; 
 
	@Column(name = "name") 
	private String name; 
 
	@Column(name = "status") 
	private String status; 
 
	@Column(name = "headline") 
	private String headline; 
 
	@Column(name = "creator") 
	private String creator; 
 
	@Column(name = "due_date") 
	@JsonFormat(pattern="yyyy-MM-dd")
	private Calendar dueDate; 
 
	@Column(name = "channels") 
	private String channels; 
 
 
public ContentproductionpipelineTblRec() { 
 
} 
 
public ContentproductionpipelineTblRec(  
  long id 
 , String name 
 , String status 
 , String headline 
 , String creator 
 , Calendar dueDate 
 , String channels 
 ) { 
	this.id = id; 
	this.name = name; 
	this.status = status; 
	this.headline = headline; 
	this.creator = creator; 
	this.dueDate = dueDate; 
	this.channels = channels; 
} 
 
public long getId() { return this.id; } 
public String getName() { return this.name; } 
public String getStatus() { return this.status; } 
public String getHeadline() { return this.headline; } 
public String getCreator() { return this.creator; } 
public Calendar getDueDate() { return this.dueDate; } 
public String getChannels() { return this.channels; } 
 
public void setId(long id ) { this.id = id; } 
public void setName(String name ) { this.name = name; } 
public void setStatus(String status ) { this.status = status; } 
public void setHeadline(String headline ) { this.headline = headline; } 
public void setCreator(String creator ) { this.creator = creator; } 
public void setDueDate(Calendar dueDate ) { this.dueDate = dueDate; } 
public void setChannels(String channels ) { this.channels = channels; } 
 
 
@Override 
public String toString() { 
	return "ContentproductionpipelineTblRec [ id = "+this.id+" ]"; 
} 
 
} 
 
