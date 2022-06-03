import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<PersonalAllCourses> personalAllCoursesFromJson(String str) => 
    List<PersonalAllCourses>.from(json.decode(str).map((x) => PersonalAllCourses.fromJson(x))); 
 
String personalAllCoursesToJson(List<PersonalAllCourses> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class PersonalAllCourses { 
  PersonalAllCourses({ 
		required this.id, 
		this.course, 
		this.year, 
		this.semester, 
		this.requirement, 
		this.completed, 
		this.grade, 
  }); 
 
		int id; 
		String? course; 
		String? year; 
		String? semester; 
		String? requirement; 
		String? completed; 
		String? grade; 
 
  factory PersonalAllCourses.fromJson(Map<String, dynamic> json) => PersonalAllCourses( 
		id: json["id"], 
		course: json["course"], 
		year: json["year"], 
		semester: json["semester"], 
		requirement: json["requirement"], 
		completed: json["completed"], 
		grade: json["grade"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"course": course, 
		"year": year, 
		"semester": semester, 
		"requirement": requirement, 
		"completed": completed, 
		"grade": grade, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Course": course, 
		"Year": year, 
		"Semester": semester, 
		"Requirement": requirement, 
		"Completed": completed, 
		"Grade": grade, 
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
