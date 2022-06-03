import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<FeaturedEventSchedule> featuredEventScheduleFromJson(String str) => 
    List<FeaturedEventSchedule>.from(json.decode(str).map((x) => FeaturedEventSchedule.fromJson(x))); 
 
String featuredEventScheduleToJson(List<FeaturedEventSchedule> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class FeaturedEventSchedule { 
  FeaturedEventSchedule({ 
		required this.id, 
		this.activity, 
		this.type, 
		this.start, 
		this.end, 
		this.location, 
  }); 
 
		int id; 
		String? activity; 
		String? type; 
		String? start; 
		String? end; 
		String? location; 
 
  factory FeaturedEventSchedule.fromJson(Map<String, dynamic> json) => FeaturedEventSchedule( 
		id: json["id"], 
		activity: json["activity"], 
		type: json["type"], 
		start: json["start"], 
		end: json["end"], 
		location: json["location"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"activity": activity, 
		"type": type, 
		"start": start, 
		"end": end, 
		"location": location, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Activity": activity, 
		"Type": type, 
		"Start": start, 
		"End": end, 
		"Location": location, 
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
