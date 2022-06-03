import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<Student> studentFromJson(String str) => 
    List<Student>.from(json.decode(str).map((x) => Student.fromJson(x))); 
 
String studentToJson(List<Student> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class Student { 
  Student({ 
		required this.name, 
		this.marks, 
		this.phone, 
		this.roll, 
  }); 
 
		String name; 
		int? marks; 
		int? phone; 
		int? roll; 
 
  factory Student.fromJson(Map<String, dynamic> json) => Student( 
		name: json["name"], 
		marks: json["marks"], 
		phone: json["phone"], 
		roll: json["roll"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"name": name, 
		"marks": marks, 
		"phone": phone, 
		"roll": roll, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Name": name, 
		"Marks": marks, 
		"Phone": phone, 
		"Roll": roll, 
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
 
        case "Marks": { ret = getEmFmtNumOpt(val); } break;	 
        case "Phone": { ret = getEmFmtNumOpt(val); } break;	 
        case "Roll": { ret = getEmFmtNumOpt(val); } break;	 
        default: { 
        ret = val.toString(); 
        } 
        } 
        return ret; 
} 
 
} 
