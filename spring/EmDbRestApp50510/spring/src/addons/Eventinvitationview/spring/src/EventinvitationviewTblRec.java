package emrest.spring; 
 
import javax.persistence.*; 
import java.util.*; 
import com.fasterxml.jackson.annotation.JsonFormat; 
 
@Entity 
@Table(name = "event_invitation_view") 
public class EventinvitationviewTblRec { 
 
	@Id 
	@Column(name = "id") 
	private long id; 
 
	@Column(name = "guest") 
	private String guest; 
 
	@Column(name = "address") 
	private String address; 
 
	@Column(name = "phone_number") 
	private String phoneNumber; 
 
	@Column(name = "plus_one") 
	private String plusOne; 
 
	@Column(name = "guest_count") 
	private long guestCount; 
 
	@Column(name = "related_event") 
	private String relatedEvent; 
 
 
public EventinvitationviewTblRec() { 
 
} 
 
public EventinvitationviewTblRec(  
  long id 
 , String guest 
 , String address 
 , String phoneNumber 
 , String plusOne 
 , long guestCount 
 , String relatedEvent 
 ) { 
	this.id = id; 
	this.guest = guest; 
	this.address = address; 
	this.phoneNumber = phoneNumber; 
	this.plusOne = plusOne; 
	this.guestCount = guestCount; 
	this.relatedEvent = relatedEvent; 
} 
 
public long getId() { return this.id; } 
public String getGuest() { return this.guest; } 
public String getAddress() { return this.address; } 
public String getPhoneNumber() { return this.phoneNumber; } 
public String getPlusOne() { return this.plusOne; } 
public long getGuestCount() { return this.guestCount; } 
public String getRelatedEvent() { return this.relatedEvent; } 
 
public void setId(long id ) { this.id = id; } 
public void setGuest(String guest ) { this.guest = guest; } 
public void setAddress(String address ) { this.address = address; } 
public void setPhoneNumber(String phoneNumber ) { this.phoneNumber = phoneNumber; } 
public void setPlusOne(String plusOne ) { this.plusOne = plusOne; } 
public void setGuestCount(long guestCount ) { this.guestCount = guestCount; } 
public void setRelatedEvent(String relatedEvent ) { this.relatedEvent = relatedEvent; } 
 
 
@Override 
public String toString() { 
	return "EventinvitationviewTblRec [ id = "+this.id+" ]"; 
} 
 
} 
 
