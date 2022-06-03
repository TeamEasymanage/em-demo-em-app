import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<CommunicationSessionsView> communicationSessionsViewFromJson(String str) => 
    List<CommunicationSessionsView>.from(json.decode(str).map((x) => CommunicationSessionsView.fromJson(x))); 
 
String communicationSessionsViewToJson(List<CommunicationSessionsView> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class CommunicationSessionsView { 
  CommunicationSessionsView({ 
		required this.id, 
		this.name, 
		this.study, 
		this.date99, 
		this.personInterviewed, 
		this.gotomeetingUrl, 
		this.status, 
		this.overallFeedbackScore, 
		this.sessionType, 
  }); 
 
		int id; 
		String? name; 
		String? study; 
		String? date99; 
		String? personInterviewed; 
		String? gotomeetingUrl; 
		String? status; 
		String? overallFeedbackScore; 
		String? sessionType; 
 
  factory CommunicationSessionsView.fromJson(Map<String, dynamic> json) => CommunicationSessionsView( 
		id: json["id"], 
		name: json["name"], 
		study: json["study"], 
		date99: json["date99"], 
		personInterviewed: json["personInterviewed"], 
		gotomeetingUrl: json["gotomeetingUrl"], 
		status: json["status"], 
		overallFeedbackScore: json["overallFeedbackScore"], 
		sessionType: json["sessionType"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"name": name, 
		"study": study, 
		"date99": date99, 
		"personInterviewed": personInterviewed, 
		"gotomeetingUrl": gotomeetingUrl, 
		"status": status, 
		"overallFeedbackScore": overallFeedbackScore, 
		"sessionType": sessionType, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Name": name, 
		"Study": study, 
		"Date": date99, 
		"Person Interviewed": personInterviewed, 
		"Gotomeeting Url": gotomeetingUrl, 
		"Status": status, 
		"Overall Feedback Score": overallFeedbackScore, 
		"Session Type": sessionType, 
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
