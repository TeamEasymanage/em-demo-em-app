import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<ErpTblkeydate> erpTblkeydateFromJson(String str) => 
    List<ErpTblkeydate>.from(json.decode(str).map((x) => ErpTblkeydate.fromJson(x))); 
 
String erpTblkeydateToJson(List<ErpTblkeydate> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class ErpTblkeydate { 
  ErpTblkeydate({ 
		required this.dateofinquiry, 
		this.requestedqty, 
		this.reqquoteamt, 
		this.meetingpreftime, 
		this.created, 
		this.updated, 
  }); 
 
		String dateofinquiry; 
		int? requestedqty; 
		double? reqquoteamt; 
		String? meetingpreftime; 
		String? created; 
		String? updated; 
 
  factory ErpTblkeydate.fromJson(Map<String, dynamic> json) => ErpTblkeydate( 
		dateofinquiry: json["dateofinquiry"], 
		requestedqty: json["requestedqty"], 
		reqquoteamt: json["reqquoteamt"], 
		meetingpreftime: json["meetingpreftime"], 
		created: json["created"], 
		updated: json["updated"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"dateofinquiry": dateofinquiry, 
		"requestedqty": requestedqty, 
		"reqquoteamt": reqquoteamt, 
		"meetingpreftime": meetingpreftime, 
		"created": created, 
		"updated": updated, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Dateofinquiry": dateofinquiry, 
		"Requestedqty": requestedqty, 
		"Reqquoteamt": reqquoteamt, 
		"Meetingpreftime": meetingpreftime, 
		"Created": created, 
		"Updated": updated, 
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
 
        case "Requestedqty": { ret = getEmFmtNumOpt(val); } break;	 
        //case "Reqquoteamt": { ret = getEmFmtCurOpt(val); } break;	 
        default: { 
        ret = val.toString(); 
        } 
        } 
        return ret; 
} 
 
} 
