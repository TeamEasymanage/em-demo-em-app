import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<RecruitingAllEmployees> recruitingAllEmployeesFromJson(String str) => 
    List<RecruitingAllEmployees>.from(json.decode(str).map((x) => RecruitingAllEmployees.fromJson(x))); 
 
String recruitingAllEmployeesToJson(List<RecruitingAllEmployees> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class RecruitingAllEmployees { 
  RecruitingAllEmployees({ 
		required this.id, 
		this.name, 
		this.location, 
		this.title, 
		this.status, 
		this.startDate, 
		this.department, 
		this.reportsTo, 
		this.emailAddress, 
		this.dob, 
  }); 
 
		int id; 
		String? name; 
		String? location; 
		String? title; 
		String? status; 
		String? startDate; 
		String? department; 
		String? reportsTo; 
		String? emailAddress; 
		String? dob; 
 
  factory RecruitingAllEmployees.fromJson(Map<String, dynamic> json) => RecruitingAllEmployees( 
		id: json["id"], 
		name: json["name"], 
		location: json["location"], 
		title: json["title"], 
		status: json["status"], 
		startDate: json["startDate"], 
		department: json["department"], 
		reportsTo: json["reportsTo"], 
		emailAddress: json["emailAddress"], 
		dob: json["dob"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"name": name, 
		"location": location, 
		"title": title, 
		"status": status, 
		"startDate": startDate, 
		"department": department, 
		"reportsTo": reportsTo, 
		"emailAddress": emailAddress, 
		"dob": dob, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Name": name, 
		"Location": location, 
		"Title": title, 
		"Status": status, 
		"Start Date": startDate, 
		"Department": department, 
		"Reports To": reportsTo, 
		"Email Address": emailAddress, 
		"Dob": dob, 
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
        default: { 
        ret = val.toString(); 
        } 
        } 
        return ret; 
} 
 
} 
