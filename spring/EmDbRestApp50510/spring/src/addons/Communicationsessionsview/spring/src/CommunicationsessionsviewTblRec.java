package emrest.spring; 
 
import javax.persistence.*; 
import java.util.*; 
import com.fasterxml.jackson.annotation.JsonFormat; 
 
@Entity 
@Table(name = "communication_sessions_view") 
public class CommunicationsessionsviewTblRec { 
 
	@Id 
	@Column(name = "id") 
	private long id; 
 
	@Column(name = "name") 
	private String name; 
 
	@Column(name = "study") 
	private String study; 
 
	@Column(name = "date") 
	@JsonFormat(pattern="yyyy-MM-dd")
	private Calendar date99; 
 
	@Column(name = "person_interviewed") 
	private String personInterviewed; 
 
	@Column(name = "gotomeeting_url") 
	private String gotomeetingUrl; 
 
	@Column(name = "status") 
	private String status; 
 
	@Column(name = "overall_feedback_score") 
	private String overallFeedbackScore; 
 
	@Column(name = "session_type") 
	private String sessionType; 
 
 
public CommunicationsessionsviewTblRec() { 
 
} 
 
public CommunicationsessionsviewTblRec(  
  long id 
 , String name 
 , String study 
 , Calendar date99 
 , String personInterviewed 
 , String gotomeetingUrl 
 , String status 
 , String overallFeedbackScore 
 , String sessionType 
 ) { 
	this.id = id; 
	this.name = name; 
	this.study = study; 
	this.date99 = date99; 
	this.personInterviewed = personInterviewed; 
	this.gotomeetingUrl = gotomeetingUrl; 
	this.status = status; 
	this.overallFeedbackScore = overallFeedbackScore; 
	this.sessionType = sessionType; 
} 
 
public long getId() { return this.id; } 
public String getName() { return this.name; } 
public String getStudy() { return this.study; } 
public Calendar getDate() { return this.date99; } 
public String getPersonInterviewed() { return this.personInterviewed; } 
public String getGotomeetingUrl() { return this.gotomeetingUrl; } 
public String getStatus() { return this.status; } 
public String getOverallFeedbackScore() { return this.overallFeedbackScore; } 
public String getSessionType() { return this.sessionType; } 
 
public void setId(long id ) { this.id = id; } 
public void setName(String name ) { this.name = name; } 
public void setStudy(String study ) { this.study = study; } 
public void setDate(Calendar date99 ) { this.date99 = date99; } 
public void setPersonInterviewed(String personInterviewed ) { this.personInterviewed = personInterviewed; } 
public void setGotomeetingUrl(String gotomeetingUrl ) { this.gotomeetingUrl = gotomeetingUrl; } 
public void setStatus(String status ) { this.status = status; } 
public void setOverallFeedbackScore(String overallFeedbackScore ) { this.overallFeedbackScore = overallFeedbackScore; } 
public void setSessionType(String sessionType ) { this.sessionType = sessionType; } 
 
 
@Override 
public String toString() { 
	return "CommunicationsessionsviewTblRec [ id = "+this.id+" ]"; 
} 
 
} 
 
