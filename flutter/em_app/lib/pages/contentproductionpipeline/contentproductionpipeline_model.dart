import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<ContentProductionPipeline> contentProductionPipelineFromJson(String str) => 
    List<ContentProductionPipeline>.from(json.decode(str).map((x) => ContentProductionPipeline.fromJson(x))); 
 
String contentProductionPipelineToJson(List<ContentProductionPipeline> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class ContentProductionPipeline { 
  ContentProductionPipeline({ 
		required this.id, 
		this.name, 
		this.status, 
		this.headline, 
		this.creator, 
		this.dueDate, 
		this.channels, 
  }); 
 
		int id; 
		String? name; 
		String? status; 
		String? headline; 
		String? creator; 
		String? dueDate; 
		String? channels; 
 
  factory ContentProductionPipeline.fromJson(Map<String, dynamic> json) => ContentProductionPipeline( 
		id: json["id"], 
		name: json["name"], 
		status: json["status"], 
		headline: json["headline"], 
		creator: json["creator"], 
		dueDate: json["dueDate"], 
		channels: json["channels"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"name": name, 
		"status": status, 
		"headline": headline, 
		"creator": creator, 
		"dueDate": dueDate, 
		"channels": channels, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Name": name, 
		"Status": status, 
		"Headline": headline, 
		"Creator": creator, 
		"Due Date": dueDate, 
		"Channels": channels, 
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
