package emrest.spring; 
 
import javax.persistence.*; 
import java.util.*; 
import com.fasterxml.jackson.annotation.JsonFormat; 
 
@Entity 
@Table(name = "hobbies_art_view") 
public class HobbiesartviewTblRec { 
 
	@Id 
	@Column(name = "id") 
	private long id; 
 
	@Column(name = "name") 
	private String name; 
 
	@Column(name = "my_price_paid") 
	private String myPricePaid; 
 
	@Column(name = "insured") 
	private String insured; 
 
	@Column(name = "artist") 
	private String artist; 
 
	@Column(name = "my_notes") 
	private String myNotes; 
 
 
public HobbiesartviewTblRec() { 
 
} 
 
public HobbiesartviewTblRec(  
  long id 
 , String name 
 , String myPricePaid 
 , String insured 
 , String artist 
 , String myNotes 
 ) { 
	this.id = id; 
	this.name = name; 
	this.myPricePaid = myPricePaid; 
	this.insured = insured; 
	this.artist = artist; 
	this.myNotes = myNotes; 
} 
 
public long getId() { return this.id; } 
public String getName() { return this.name; } 
public String getMyPricePaid() { return this.myPricePaid; } 
public String getInsured() { return this.insured; } 
public String getArtist() { return this.artist; } 
public String getMyNotes() { return this.myNotes; } 
 
public void setId(long id ) { this.id = id; } 
public void setName(String name ) { this.name = name; } 
public void setMyPricePaid(String myPricePaid ) { this.myPricePaid = myPricePaid; } 
public void setInsured(String insured ) { this.insured = insured; } 
public void setArtist(String artist ) { this.artist = artist; } 
public void setMyNotes(String myNotes ) { this.myNotes = myNotes; } 
 
 
@Override 
public String toString() { 
	return "HobbiesartviewTblRec [ id = "+this.id+" ]"; 
} 
 
} 
 
