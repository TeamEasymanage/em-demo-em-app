import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<ProductDesign> productDesignFromJson(String str) => 
    List<ProductDesign>.from(json.decode(str).map((x) => ProductDesign.fromJson(x))); 
 
String productDesignToJson(List<ProductDesign> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class ProductDesign { 
  ProductDesign({ 
		required this.id, 
		this.keyResult, 
		this.objective, 
		this.driOrStakeholder, 
		this.progress, 
		this.goal, 
		this.projects, 
  }); 
 
		int id; 
		String? keyResult; 
		String? objective; 
		String? driOrStakeholder; 
		int? progress; 
		int? goal; 
		String? projects; 
 
  factory ProductDesign.fromJson(Map<String, dynamic> json) => ProductDesign( 
		id: json["id"], 
		keyResult: json["keyResult"], 
		objective: json["objective"], 
		driOrStakeholder: json["driOrStakeholder"], 
		progress: json["progress"], 
		goal: json["goal"], 
		projects: json["projects"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"keyResult": keyResult, 
		"objective": objective, 
		"driOrStakeholder": driOrStakeholder, 
		"progress": progress, 
		"goal": goal, 
		"projects": projects, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Key Result": keyResult, 
		"Objective": objective, 
		"Dri Or Stakeholder": driOrStakeholder, 
		"Progress": progress, 
		"Goal": goal, 
		"Projects": projects, 
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
        case "Progress": { ret = getEmFmtNumOpt(val); } break;	 
        case "Goal": { ret = getEmFmtNumOpt(val); } break;	 
        default: { 
        ret = val.toString(); 
        } 
        } 
        return ret; 
} 
 
} 
