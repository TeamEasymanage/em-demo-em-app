import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<CreativeTalentRole> creativeTalentRoleFromJson(String str) => 
    List<CreativeTalentRole>.from(json.decode(str).map((x) => CreativeTalentRole.fromJson(x))); 
 
String creativeTalentRoleToJson(List<CreativeTalentRole> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class CreativeTalentRole { 
  CreativeTalentRole({ 
		required this.id, 
		this.fullName, 
		this.role, 
		this.category, 
		this.skills, 
		this.availabilityDate, 
		this.region, 
		this.manager, 
		this.portfolio, 
		this.email, 
		this.phone, 
  }); 
 
		int id; 
		String? fullName; 
		String? role; 
		String? category; 
		String? skills; 
		String? availabilityDate; 
		String? region; 
		String? manager; 
		String? portfolio; 
		String? email; 
		String? phone; 
 
  factory CreativeTalentRole.fromJson(Map<String, dynamic> json) => CreativeTalentRole( 
		id: json["id"], 
		fullName: json["fullName"], 
		role: json["role"], 
		category: json["category"], 
		skills: json["skills"], 
		availabilityDate: json["availabilityDate"], 
		region: json["region"], 
		manager: json["manager"], 
		portfolio: json["portfolio"], 
		email: json["email"], 
		phone: json["phone"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"fullName": fullName, 
		"role": role, 
		"category": category, 
		"skills": skills, 
		"availabilityDate": availabilityDate, 
		"region": region, 
		"manager": manager, 
		"portfolio": portfolio, 
		"email": email, 
		"phone": phone, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Full Name": fullName, 
		"Role": role, 
		"Category": category, 
		"Skills": skills, 
		"Availability Date": availabilityDate, 
		"Region": region, 
		"Manager": manager, 
		"Portfolio": portfolio, 
		"Email": email, 
		"Phone": phone, 
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
