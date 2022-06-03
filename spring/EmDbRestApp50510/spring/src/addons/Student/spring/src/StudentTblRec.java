package emrest.spring; 
 
import javax.persistence.*; 
import java.util.*; 
import com.fasterxml.jackson.annotation.JsonFormat; 
 
@Entity 
@Table(name = "student") 
public class StudentTblRec { 
 
	@Id 
	@Column(name = "name") 
	private String name; 
 
	@Column(name = "marks") 
	private long marks; 
 
	@Column(name = "phone") 
	private long phone; 
 
	@Column(name = "roll") 
	private long roll; 
 
 
public StudentTblRec() { 
 
} 
 
public StudentTblRec(  
  String name 
 , long marks 
 , long phone 
 , long roll 
 ) { 
	this.name = name; 
	this.marks = marks; 
	this.phone = phone; 
	this.roll = roll; 
} 
 
public String getName() { return this.name; } 
public long getMarks() { return this.marks; } 
public long getPhone() { return this.phone; } 
public long getRoll() { return this.roll; } 
 
public void setName(String name ) { this.name = name; } 
public void setMarks(long marks ) { this.marks = marks; } 
public void setPhone(long phone ) { this.phone = phone; } 
public void setRoll(long roll ) { this.roll = roll; } 
 
 
@Override 
public String toString() { 
	return "StudentTblRec [ name = "+this.name+" ]"; 
} 
 
} 
 
