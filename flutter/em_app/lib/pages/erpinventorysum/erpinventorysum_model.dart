import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<ErpInventorySum> erpInventorySumFromJson(String str) => 
    List<ErpInventorySum>.from(json.decode(str).map((x) => ErpInventorySum.fromJson(x))); 
 
String erpInventorySumToJson(List<ErpInventorySum> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class ErpInventorySum { 
  ErpInventorySum({ 
		required this.year, 
		this.month, 
		this.totalQty, 
  }); 
 
		int year; 
		int? month; 
		double? totalQty; 
 
  factory ErpInventorySum.fromJson(Map<String, dynamic> json) => ErpInventorySum( 
		year: json["year"], 
		month: json["month"], 
		totalQty: json["totalQty"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"year": year, 
		"month": month, 
		"totalQty": totalQty, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Year": year, 
		"Month": month, 
		"Total Qty": totalQty, 
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
 
        case "Year": { ret = getEmFmtNumOpt(val); } break;	 
        case "Month": { ret = getEmFmtNumOpt(val); } break;	 
        //case "Total Qty": { ret = getEmFmtCurOpt(val); } break;	 
        default: { 
        ret = val.toString(); 
        } 
        } 
        return ret; 
} 
 
} 
