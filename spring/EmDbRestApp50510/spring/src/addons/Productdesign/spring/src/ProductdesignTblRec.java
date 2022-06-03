package emrest.spring; 
 
import javax.persistence.*; 
import java.util.*; 
import com.fasterxml.jackson.annotation.JsonFormat; 
 
@Entity 
@Table(name = "product_design") 
public class ProductdesignTblRec { 
 
	@Id 
	@Column(name = "id") 
	private long id; 
 
	@Column(name = "key_result") 
	private String keyResult; 
 
	@Column(name = "objective") 
	private String objective; 
 
	@Column(name = "dri_or_stakeholder") 
	private String driOrStakeholder; 
 
	@Column(name = "progress") 
	private long progress; 
 
	@Column(name = "goal") 
	private long goal; 
 
	@Column(name = "projects") 
	private String projects; 
 
 
public ProductdesignTblRec() { 
 
} 
 
public ProductdesignTblRec(  
  long id 
 , String keyResult 
 , String objective 
 , String driOrStakeholder 
 , long progress 
 , long goal 
 , String projects 
 ) { 
	this.id = id; 
	this.keyResult = keyResult; 
	this.objective = objective; 
	this.driOrStakeholder = driOrStakeholder; 
	this.progress = progress; 
	this.goal = goal; 
	this.projects = projects; 
} 
 
public long getId() { return this.id; } 
public String getKeyResult() { return this.keyResult; } 
public String getObjective() { return this.objective; } 
public String getDriOrStakeholder() { return this.driOrStakeholder; } 
public long getProgress() { return this.progress; } 
public long getGoal() { return this.goal; } 
public String getProjects() { return this.projects; } 
 
public void setId(long id ) { this.id = id; } 
public void setKeyResult(String keyResult ) { this.keyResult = keyResult; } 
public void setObjective(String objective ) { this.objective = objective; } 
public void setDriOrStakeholder(String driOrStakeholder ) { this.driOrStakeholder = driOrStakeholder; } 
public void setProgress(long progress ) { this.progress = progress; } 
public void setGoal(long goal ) { this.goal = goal; } 
public void setProjects(String projects ) { this.projects = projects; } 
 
 
@Override 
public String toString() { 
	return "ProductdesignTblRec [ id = "+this.id+" ]"; 
} 
 
} 
 
