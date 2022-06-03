package emrest.spring; 
 
import javax.persistence.*; 
import java.util.*; 
import com.fasterxml.jackson.annotation.JsonFormat; 
 
@Entity 
@Table(name = "non_profit_donations") 
public class NonprofitdonationsTblRec { 
 
	@Id 
	@Column(name = "id") 
	private long id; 
 
	@Column(name = "gift_id") 
	private String giftId; 
 
	@Column(name = "designated_program") 
	private String designatedProgram; 
 
	@Column(name = "amount") 
	private String amount; 
 
	@Column(name = "donor") 
	private String donor; 
 
	@Column(name = "first_contacted") 
	@JsonFormat(pattern="yyyy-MM-dd")
	private Calendar firstContacted; 
 
	@Column(name = "date_of_donation") 
	@JsonFormat(pattern="yyyy-MM-dd")
	private Calendar dateOfDonation; 
 
 
public NonprofitdonationsTblRec() { 
 
} 
 
public NonprofitdonationsTblRec(  
  long id 
 , String giftId 
 , String designatedProgram 
 , String amount 
 , String donor 
 , Calendar firstContacted 
 , Calendar dateOfDonation 
 ) { 
	this.id = id; 
	this.giftId = giftId; 
	this.designatedProgram = designatedProgram; 
	this.amount = amount; 
	this.donor = donor; 
	this.firstContacted = firstContacted; 
	this.dateOfDonation = dateOfDonation; 
} 
 
public long getId() { return this.id; } 
public String getGiftId() { return this.giftId; } 
public String getDesignatedProgram() { return this.designatedProgram; } 
public String getAmount() { return this.amount; } 
public String getDonor() { return this.donor; } 
public Calendar getFirstContacted() { return this.firstContacted; } 
public Calendar getDateOfDonation() { return this.dateOfDonation; } 
 
public void setId(long id ) { this.id = id; } 
public void setGiftId(String giftId ) { this.giftId = giftId; } 
public void setDesignatedProgram(String designatedProgram ) { this.designatedProgram = designatedProgram; } 
public void setAmount(String amount ) { this.amount = amount; } 
public void setDonor(String donor ) { this.donor = donor; } 
public void setFirstContacted(Calendar firstContacted ) { this.firstContacted = firstContacted; } 
public void setDateOfDonation(Calendar dateOfDonation ) { this.dateOfDonation = dateOfDonation; } 
 
 
@Override 
public String toString() { 
	return "NonprofitdonationsTblRec [ id = "+this.id+" ]"; 
} 
 
} 
 
