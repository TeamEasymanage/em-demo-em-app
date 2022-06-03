package emrest.spring; 
 
import javax.persistence.*; 
import java.util.*; 
import com.fasterxml.jackson.annotation.JsonFormat; 
 
@Entity 
@Table(name = "software_development_features") 
public class SoftwaredevelopmentfeaturesTblRec { 
 
	@Id 
	@Column(name = "id") 
	private long id; 
 
	@Column(name = "feature") 
	private String feature; 
 
	@Column(name = "status") 
	private String status; 
 
	@Column(name = "product_owner") 
	private String productOwner; 
 
	@Column(name = "launch_okrs") 
	private String launchOkrs; 
 
	@Column(name = "feature_complete_date") 
	@JsonFormat(pattern="yyyy-MM-dd")
	private Calendar featureCompleteDate; 
 
	@Column(name = "feature_launch_date") 
	@JsonFormat(pattern="yyyy-MM-dd")
	private Calendar featureLaunchDate; 
 
	@Column(name = "marketing_launch_date") 
	@JsonFormat(pattern="yyyy-MM-dd")
	private Calendar marketingLaunchDate; 
 
	@Column(name = "complexity") 
	private String complexity; 
 
	@Column(name = "value") 
	private String value; 
 
 
public SoftwaredevelopmentfeaturesTblRec() { 
 
} 
 
public SoftwaredevelopmentfeaturesTblRec(  
  long id 
 , String feature 
 , String status 
 , String productOwner 
 , String launchOkrs 
 , Calendar featureCompleteDate 
 , Calendar featureLaunchDate 
 , Calendar marketingLaunchDate 
 , String complexity 
 , String value 
 ) { 
	this.id = id; 
	this.feature = feature; 
	this.status = status; 
	this.productOwner = productOwner; 
	this.launchOkrs = launchOkrs; 
	this.featureCompleteDate = featureCompleteDate; 
	this.featureLaunchDate = featureLaunchDate; 
	this.marketingLaunchDate = marketingLaunchDate; 
	this.complexity = complexity; 
	this.value = value; 
} 
 
public long getId() { return this.id; } 
public String getFeature() { return this.feature; } 
public String getStatus() { return this.status; } 
public String getProductOwner() { return this.productOwner; } 
public String getLaunchOkrs() { return this.launchOkrs; } 
public Calendar getFeatureCompleteDate() { return this.featureCompleteDate; } 
public Calendar getFeatureLaunchDate() { return this.featureLaunchDate; } 
public Calendar getMarketingLaunchDate() { return this.marketingLaunchDate; } 
public String getComplexity() { return this.complexity; } 
public String getValue() { return this.value; } 
 
public void setId(long id ) { this.id = id; } 
public void setFeature(String feature ) { this.feature = feature; } 
public void setStatus(String status ) { this.status = status; } 
public void setProductOwner(String productOwner ) { this.productOwner = productOwner; } 
public void setLaunchOkrs(String launchOkrs ) { this.launchOkrs = launchOkrs; } 
public void setFeatureCompleteDate(Calendar featureCompleteDate ) { this.featureCompleteDate = featureCompleteDate; } 
public void setFeatureLaunchDate(Calendar featureLaunchDate ) { this.featureLaunchDate = featureLaunchDate; } 
public void setMarketingLaunchDate(Calendar marketingLaunchDate ) { this.marketingLaunchDate = marketingLaunchDate; } 
public void setComplexity(String complexity ) { this.complexity = complexity; } 
public void setValue(String value ) { this.value = value; } 
 
 
@Override 
public String toString() { 
	return "SoftwaredevelopmentfeaturesTblRec [ id = "+this.id+" ]"; 
} 
 
} 
 
