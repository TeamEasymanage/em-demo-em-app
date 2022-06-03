import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<ProjectManagementTask> projectManagementTaskFromJson(String str) => 
    List<ProjectManagementTask>.from(json.decode(str).map((x) => ProjectManagementTask.fromJson(x))); 
 
String projectManagementTaskToJson(List<ProjectManagementTask> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class ProjectManagementTask { 
  ProjectManagementTask({ 
		required this.id, 
		this.task, 
		this.docs, 
		this.team, 
		this.owner, 
		this.duedate, 
		this.complete, 
		this.notes, 
  }); 
 
		int id; 
		String? task; 
		String? docs; 
		String? team; 
		String? owner; 
		String? duedate; 
		String? complete; 
		String? notes; 
 
  factory ProjectManagementTask.fromJson(Map<String, dynamic> json) => ProjectManagementTask( 
		id: json["id"], 
		task: json["task"], 
		docs: json["docs"], 
		team: json["team"], 
		owner: json["owner"], 
		duedate: json["duedate"], 
		complete: json["complete"], 
		notes: json["notes"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"task": task, 
		"docs": docs, 
		"team": team, 
		"owner": owner, 
		"duedate": duedate, 
		"complete": complete, 
		"notes": notes, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Task": task, 
		"Docs": docs, 
		"Team": team, 
		"Owner": owner, 
		"Duedate": duedate, 
		"Complete": complete, 
		"Notes": notes, 
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
