import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<Employee> employeeFromJson(String str) => 
    List<Employee>.from(json.decode(str).map((x) => Employee.fromJson(x))); 
 
String employeeToJson(List<Employee> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class Employee { 
  Employee({ 
		required this.name, 
		this.address, 
		this.mobile, 
  }); 
 
		String name; 
		String? address; 
		String? mobile; 
 
  factory Employee.fromJson(Map<String, dynamic> json) => Employee( 
		name: json["name"], 
		address: json["address"], 
		mobile: json["mobile"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"name": name, 
		"address": address, 
		"mobile": mobile, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Name": name, 
		"Address": address, 
		"Mobile": mobile, 
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
 
        default: { 
        ret = val.toString(); 
        } 
        } 
        return ret; 
} 
 
} 
