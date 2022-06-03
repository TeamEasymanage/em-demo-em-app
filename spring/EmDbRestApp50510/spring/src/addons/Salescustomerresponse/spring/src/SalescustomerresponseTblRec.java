package emrest.spring; 
 
import javax.persistence.*; 
import java.util.*; 
import com.fasterxml.jackson.annotation.JsonFormat; 
 
@Entity 
@Table(name = "sales_customer_response") 
public class SalescustomerresponseTblRec { 
 
	@Id 
	@Column(name = "id") 
	private long id; 
 
	@Column(name = "customer_name") 
	private String customerName; 
 
	@Column(name = "submission_time") 
	@JsonFormat(pattern="yyyy-MM-dd HH:mm")
	private Calendar submissionTime; 
 
	@Column(name = "email") 
	private String email; 
 
	@Column(name = "company_name") 
	private String companyName; 
 
	@Column(name = "product_satisfaction") 
	private String productSatisfaction; 
 
	@Column(name = "service_satisfaction") 
	private String serviceSatisfaction; 
 
	@Column(name = "product_comparison") 
	private String productComparison; 
 
	@Column(name = "service_comparison") 
	private String serviceComparison; 
 
	@Column(name = "reasons") 
	private String reasons; 
 
	@Column(name = "rating") 
	private long rating; 
 
	@Column(name = "highlight") 
	private String highlight; 
 
	@Column(name = "promoter") 
	private String promoter; 
 
	@Column(name = "insights") 
	private String insights; 
 
 
public SalescustomerresponseTblRec() { 
 
} 
 
public SalescustomerresponseTblRec(  
  long id 
 , String customerName 
 , Calendar submissionTime 
 , String email 
 , String companyName 
 , String productSatisfaction 
 , String serviceSatisfaction 
 , String productComparison 
 , String serviceComparison 
 , String reasons 
 , long rating 
 , String highlight 
 , String promoter 
 , String insights 
 ) { 
	this.id = id; 
	this.customerName = customerName; 
	this.submissionTime = submissionTime; 
	this.email = email; 
	this.companyName = companyName; 
	this.productSatisfaction = productSatisfaction; 
	this.serviceSatisfaction = serviceSatisfaction; 
	this.productComparison = productComparison; 
	this.serviceComparison = serviceComparison; 
	this.reasons = reasons; 
	this.rating = rating; 
	this.highlight = highlight; 
	this.promoter = promoter; 
	this.insights = insights; 
} 
 
public long getId() { return this.id; } 
public String getCustomerName() { return this.customerName; } 
public Calendar getSubmissionTime() { return this.submissionTime; } 
public String getEmail() { return this.email; } 
public String getCompanyName() { return this.companyName; } 
public String getProductSatisfaction() { return this.productSatisfaction; } 
public String getServiceSatisfaction() { return this.serviceSatisfaction; } 
public String getProductComparison() { return this.productComparison; } 
public String getServiceComparison() { return this.serviceComparison; } 
public String getReasons() { return this.reasons; } 
public long getRating() { return this.rating; } 
public String getHighlight() { return this.highlight; } 
public String getPromoter() { return this.promoter; } 
public String getInsights() { return this.insights; } 
 
public void setId(long id ) { this.id = id; } 
public void setCustomerName(String customerName ) { this.customerName = customerName; } 
public void setSubmissionTime(Calendar submissionTime ) { this.submissionTime = submissionTime; } 
public void setEmail(String email ) { this.email = email; } 
public void setCompanyName(String companyName ) { this.companyName = companyName; } 
public void setProductSatisfaction(String productSatisfaction ) { this.productSatisfaction = productSatisfaction; } 
public void setServiceSatisfaction(String serviceSatisfaction ) { this.serviceSatisfaction = serviceSatisfaction; } 
public void setProductComparison(String productComparison ) { this.productComparison = productComparison; } 
public void setServiceComparison(String serviceComparison ) { this.serviceComparison = serviceComparison; } 
public void setReasons(String reasons ) { this.reasons = reasons; } 
public void setRating(long rating ) { this.rating = rating; } 
public void setHighlight(String highlight ) { this.highlight = highlight; } 
public void setPromoter(String promoter ) { this.promoter = promoter; } 
public void setInsights(String insights ) { this.insights = insights; } 
 
 
@Override 
public String toString() { 
	return "SalescustomerresponseTblRec [ id = "+this.id+" ]"; 
} 
 
} 
 
