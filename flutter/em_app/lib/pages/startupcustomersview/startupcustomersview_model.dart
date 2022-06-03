import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<StartupCustomersView> startupCustomersViewFromJson(String str) => 
    List<StartupCustomersView>.from(json.decode(str).map((x) => StartupCustomersView.fromJson(x))); 
 
String startupCustomersViewToJson(List<StartupCustomersView> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class StartupCustomersView { 
  StartupCustomersView({ 
		required this.id, 
		this.name, 
		this.email, 
		this.person, 
		this.usageType, 
		this.interviewSession, 
  }); 
 
		int id; 
		String? name; 
		String? email; 
		String? person; 
		String? usageType; 
		String? interviewSession; 
 
  factory StartupCustomersView.fromJson(Map<String, dynamic> json) => StartupCustomersView( 
		id: json["id"], 
		name: json["name"], 
		email: json["email"], 
		person: json["person"], 
		usageType: json["usageType"], 
		interviewSession: json["interviewSession"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"name": name, 
		"email": email, 
		"person": person, 
		"usageType": usageType, 
		"interviewSession": interviewSession, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Name": name, 
		"Email": email, 
		"Person": person, 
		"Usage Type": usageType, 
		"Interview Session": interviewSession, 
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
