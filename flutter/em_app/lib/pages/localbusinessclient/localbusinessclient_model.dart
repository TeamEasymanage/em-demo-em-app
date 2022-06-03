import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<LocalBusinessClient> localBusinessClientFromJson(String str) => 
    List<LocalBusinessClient>.from(json.decode(str).map((x) => LocalBusinessClient.fromJson(x))); 
 
String localBusinessClientToJson(List<LocalBusinessClient> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class LocalBusinessClient { 
  LocalBusinessClient({ 
		required this.id, 
		this.name, 
		this.category, 
		this.complete, 
		this.projectImages, 
		this.client, 
		this.projectLead, 
		this.projectTeam, 
		this.kickOfDate, 
		this.dueDate, 
		this.notes, 
		this.tasks, 
  }); 
 
		int id; 
		String? name; 
		String? category; 
		String? complete; 
		String? projectImages; 
		String? client; 
		String? projectLead; 
		String? projectTeam; 
		String? kickOfDate; 
		String? dueDate; 
		String? notes; 
		String? tasks; 
 
  factory LocalBusinessClient.fromJson(Map<String, dynamic> json) => LocalBusinessClient( 
		id: json["id"], 
		name: json["name"], 
		category: json["category"], 
		complete: json["complete"], 
		projectImages: json["projectImages"], 
		client: json["client"], 
		projectLead: json["projectLead"], 
		projectTeam: json["projectTeam"], 
		kickOfDate: json["kickOfDate"], 
		dueDate: json["dueDate"], 
		notes: json["notes"], 
		tasks: json["tasks"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"name": name, 
		"category": category, 
		"complete": complete, 
		"projectImages": projectImages, 
		"client": client, 
		"projectLead": projectLead, 
		"projectTeam": projectTeam, 
		"kickOfDate": kickOfDate, 
		"dueDate": dueDate, 
		"notes": notes, 
		"tasks": tasks, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Name": name, 
		"Category": category, 
		"Complete": complete, 
		"Project Images": projectImages, 
		"Client": client, 
		"Project Lead": projectLead, 
		"Project Team": projectTeam, 
		"Kick Of Date": kickOfDate, 
		"Due Date": dueDate, 
		"Notes": notes, 
		"Tasks": tasks, 
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
