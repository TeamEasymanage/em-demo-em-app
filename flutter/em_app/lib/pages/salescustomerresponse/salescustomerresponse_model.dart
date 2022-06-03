import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<SalesCustomerResponse> salesCustomerResponseFromJson(String str) => 
    List<SalesCustomerResponse>.from(json.decode(str).map((x) => SalesCustomerResponse.fromJson(x))); 
 
String salesCustomerResponseToJson(List<SalesCustomerResponse> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class SalesCustomerResponse { 
  SalesCustomerResponse({ 
		required this.id, 
		this.customerName, 
		this.submissionTime, 
		this.email, 
		this.companyName, 
		this.productSatisfaction, 
		this.serviceSatisfaction, 
		this.productComparison, 
		this.serviceComparison, 
		this.reasons, 
		this.rating, 
		this.highlight, 
		this.promoter, 
		this.insights, 
  }); 
 
		int id; 
		String? customerName; 
		String? submissionTime; 
		String? email; 
		String? companyName; 
		String? productSatisfaction; 
		String? serviceSatisfaction; 
		String? productComparison; 
		String? serviceComparison; 
		String? reasons; 
		int? rating; 
		String? highlight; 
		String? promoter; 
		String? insights; 
 
  factory SalesCustomerResponse.fromJson(Map<String, dynamic> json) => SalesCustomerResponse( 
		id: json["id"], 
		customerName: json["customerName"], 
		submissionTime: json["submissionTime"], 
		email: json["email"], 
		companyName: json["companyName"], 
		productSatisfaction: json["productSatisfaction"], 
		serviceSatisfaction: json["serviceSatisfaction"], 
		productComparison: json["productComparison"], 
		serviceComparison: json["serviceComparison"], 
		reasons: json["reasons"], 
		rating: json["rating"], 
		highlight: json["highlight"], 
		promoter: json["promoter"], 
		insights: json["insights"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"customerName": customerName, 
		"submissionTime": submissionTime, 
		"email": email, 
		"companyName": companyName, 
		"productSatisfaction": productSatisfaction, 
		"serviceSatisfaction": serviceSatisfaction, 
		"productComparison": productComparison, 
		"serviceComparison": serviceComparison, 
		"reasons": reasons, 
		"rating": rating, 
		"highlight": highlight, 
		"promoter": promoter, 
		"insights": insights, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Customer Name": customerName, 
		"Submission Time": submissionTime, 
		"Email": email, 
		"Company Name": companyName, 
		"Product Satisfaction": productSatisfaction, 
		"Service Satisfaction": serviceSatisfaction, 
		"Product Comparison": productComparison, 
		"Service Comparison": serviceComparison, 
		"Reasons": reasons, 
		"Rating": rating, 
		"Highlight": highlight, 
		"Promoter": promoter, 
		"Insights": insights, 
      }; 
 
  List<List<String>> toListLabVal() { 
    List<List<String>> dataSet = []; 
 
    toMapLabelVal().forEach((key, value) { 
      List<String> dataSet1 = []; 
      dataSet1.add(key); 
      dataSet1.add(getKeyValFmt(key,value)); 
      dataSet.add(dataSet1); 
    }); 
    return dataSet; 
  } 
 
String getKeyValFmt (String? key, dynamic val) { 
String ret = ""; 
        switch(key) { 
        // Num Cur Fmt Columns, if any  
 
        case "Id": { ret = getEmFmtNumOpt(val); } break;	 
        case "Rating": { ret = getEmFmtNumOpt(val); } break;	 
        default: { 
        ret = val.toString(); 
        } 
        } 
        return ret; 
} 
 
} 
