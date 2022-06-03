package emrest.spring; 
 
import javax.persistence.*; 
import java.util.*; 
import com.fasterxml.jackson.annotation.JsonFormat; 
 
@Entity 
@Table(name = "featured_event_schedule") 
public class FeaturedeventscheduleTblRec { 
 
	@Id 
	@Column(name = "id") 
	private long id; 
 
	@Column(name = "activity") 
	private String activity; 
 
	@Column(name = "type") 
	private String type; 
 
	@Column(name = "start") 
	@JsonFormat(pattern="yyyy-MM-dd")
	private Calendar start; 
 
	@Column(name = "end") 
	@JsonFormat(pattern="yyyy-MM-dd")
	private Calendar end; 
 
	@Column(name = "location") 
	private String location; 
 
 
public FeaturedeventscheduleTblRec() { 
 
} 
 
public FeaturedeventscheduleTblRec(  
  long id 
 , String activity 
 , String type 
 , Calendar start 
 , Calendar end 
 , String location 
 ) { 
	this.id = id; 
	this.activity = activity; 
	this.type = type; 
	this.start = start; 
	this.end = end; 
	this.location = location; 
} 
 
public long getId() { return this.id; } 
public String getActivity() { return this.activity; } 
public String getType() { return this.type; } 
public Calendar getStart() { return this.start; } 
public Calendar getEnd() { return this.end; } 
public String getLocation() { return this.location; } 
 
public void setId(long id ) { this.id = id; } 
public void setActivity(String activity ) { this.activity = activity; } 
public void setType(String type ) { this.type = type; } 
public void setStart(Calendar start ) { this.start = start; } 
public void setEnd(Calendar end ) { this.end = end; } 
public void setLocation(String location ) { this.location = location; } 
 
 
@Override 
public String toString() { 
	return "FeaturedeventscheduleTblRec [ id = "+this.id+" ]"; 
} 
 
} 
 
