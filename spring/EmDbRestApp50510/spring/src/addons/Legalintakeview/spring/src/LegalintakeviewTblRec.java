package emrest.spring; 
 
import javax.persistence.*; 
import java.util.*; 
import com.fasterxml.jackson.annotation.JsonFormat; 
 
@Entity 
@Table(name = "legal_intake_view") 
public class LegalintakeviewTblRec { 
 
	@Id 
	@Column(name = "id") 
	private long id; 
 
	@Column(name = "full_name") 
	private String fullName; 
 
	@Column(name = "date_submitted") 
	@JsonFormat(pattern="yyyy-MM-dd")
	private Calendar dateSubmitted; 
 
	@Column(name = "review_status") 
	private String reviewStatus; 
 
	@Column(name = "date_of_birth") 
	@JsonFormat(pattern="yyyy-MM-dd")
	private Calendar dateOfBirth; 
 
	@Column(name = "gender") 
	private String gender; 
 
	@Column(name = "place_of_birth_city") 
	private String placeOfBirthCity; 
 
	@Column(name = "drivers_license_number") 
	private long driversLicenseNumber; 
 
	@Column(name = "current_address") 
	private String currentAddress; 
 
	@Column(name = "email") 
	private String email; 
 
	@Column(name = "employment_address_zip") 
	private long employmentAddressZip; 
 
 
public LegalintakeviewTblRec() { 
 
} 
 
public LegalintakeviewTblRec(  
  long id 
 , String fullName 
 , Calendar dateSubmitted 
 , String reviewStatus 
 , Calendar dateOfBirth 
 , String gender 
 , String placeOfBirthCity 
 , long driversLicenseNumber 
 , String currentAddress 
 , String email 
 , long employmentAddressZip 
 ) { 
	this.id = id; 
	this.fullName = fullName; 
	this.dateSubmitted = dateSubmitted; 
	this.reviewStatus = reviewStatus; 
	this.dateOfBirth = dateOfBirth; 
	this.gender = gender; 
	this.placeOfBirthCity = placeOfBirthCity; 
	this.driversLicenseNumber = driversLicenseNumber; 
	this.currentAddress = currentAddress; 
	this.email = email; 
	this.employmentAddressZip = employmentAddressZip; 
} 
 
public long getId() { return this.id; } 
public String getFullName() { return this.fullName; } 
public Calendar getDateSubmitted() { return this.dateSubmitted; } 
public String getReviewStatus() { return this.reviewStatus; } 
public Calendar getDateOfBirth() { return this.dateOfBirth; } 
public String getGender() { return this.gender; } 
public String getPlaceOfBirthCity() { return this.placeOfBirthCity; } 
public long getDriversLicenseNumber() { return this.driversLicenseNumber; } 
public String getCurrentAddress() { return this.currentAddress; } 
public String getEmail() { return this.email; } 
public long getEmploymentAddressZip() { return this.employmentAddressZip; } 
 
public void setId(long id ) { this.id = id; } 
public void setFullName(String fullName ) { this.fullName = fullName; } 
public void setDateSubmitted(Calendar dateSubmitted ) { this.dateSubmitted = dateSubmitted; } 
public void setReviewStatus(String reviewStatus ) { this.reviewStatus = reviewStatus; } 
public void setDateOfBirth(Calendar dateOfBirth ) { this.dateOfBirth = dateOfBirth; } 
public void setGender(String gender ) { this.gender = gender; } 
public void setPlaceOfBirthCity(String placeOfBirthCity ) { this.placeOfBirthCity = placeOfBirthCity; } 
public void setDriversLicenseNumber(long driversLicenseNumber ) { this.driversLicenseNumber = driversLicenseNumber; } 
public void setCurrentAddress(String currentAddress ) { this.currentAddress = currentAddress; } 
public void setEmail(String email ) { this.email = email; } 
public void setEmploymentAddressZip(long employmentAddressZip ) { this.employmentAddressZip = employmentAddressZip; } 
 
 
@Override 
public String toString() { 
	return "LegalintakeviewTblRec [ id = "+this.id+" ]"; 
} 
 
} 
 
