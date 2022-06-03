package emrest.spring; 
 
import javax.persistence.*; 
import java.util.*; 
import com.fasterxml.jackson.annotation.JsonFormat; 
 
@Entity 
@Table(name = "personal_all_courses") 
public class PersonalallcoursesTblRec { 
 
	@Id 
	@Column(name = "id") 
	private long id; 
 
	@Column(name = "course") 
	private String course; 
 
	@Column(name = "year") 
	private String year; 
 
	@Column(name = "semester") 
	private String semester; 
 
	@Column(name = "requirement") 
	private String requirement; 
 
	@Column(name = "completed") 
	private String completed; 
 
	@Column(name = "grade") 
	private String grade; 
 
 
public PersonalallcoursesTblRec() { 
 
} 
 
public PersonalallcoursesTblRec(  
  long id 
 , String course 
 , String year 
 , String semester 
 , String requirement 
 , String completed 
 , String grade 
 ) { 
	this.id = id; 
	this.course = course; 
	this.year = year; 
	this.semester = semester; 
	this.requirement = requirement; 
	this.completed = completed; 
	this.grade = grade; 
} 
 
public long getId() { return this.id; } 
public String getCourse() { return this.course; } 
public String getYear() { return this.year; } 
public String getSemester() { return this.semester; } 
public String getRequirement() { return this.requirement; } 
public String getCompleted() { return this.completed; } 
public String getGrade() { return this.grade; } 
 
public void setId(long id ) { this.id = id; } 
public void setCourse(String course ) { this.course = course; } 
public void setYear(String year ) { this.year = year; } 
public void setSemester(String semester ) { this.semester = semester; } 
public void setRequirement(String requirement ) { this.requirement = requirement; } 
public void setCompleted(String completed ) { this.completed = completed; } 
public void setGrade(String grade ) { this.grade = grade; } 
 
 
@Override 
public String toString() { 
	return "PersonalallcoursesTblRec [ id = "+this.id+" ]"; 
} 
 
} 
 
