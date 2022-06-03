import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<ErpTblallfldtypes> erpTblallfldtypesFromJson(String str) => 
    List<ErpTblallfldtypes>.from(json.decode(str).map((x) => ErpTblallfldtypes.fromJson(x))); 
 
String erpTblallfldtypesToJson(List<ErpTblallfldtypes> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class ErpTblallfldtypes { 
  ErpTblallfldtypes({ 
		required this.personId, 
		this.name, 
		this.phone, 
		this.mobilePhone, 
		this.pict, 
		this.email, 
		this.website, 
		this.address, 
		this.dateofinquiry, 
		this.requestedqty, 
		this.reqquoteamt, 
		this.meetingpreftime, 
		this.created, 
		this.updated, 
  }); 
 
		String personId; 
		String? name; 
		String? phone; 
		String? mobilePhone; 
		String? pict; 
		String? email; 
		String? website; 
		String? address; 
		String? dateofinquiry; 
		int? requestedqty; 
		double? reqquoteamt; 
		String? meetingpreftime; 
		String? created; 
		String? updated; 
 
  factory ErpTblallfldtypes.fromJson(Map<String, dynamic> json) => ErpTblallfldtypes( 
		personId: json["personId"], 
		name: json["name"], 
		phone: json["phone"], 
		mobilePhone: json["mobilePhone"], 
		pict: json["pict"], 
		email: json["email"], 
		website: json["website"], 
		address: json["address"], 
		dateofinquiry: json["dateofinquiry"], 
		requestedqty: json["requestedqty"], 
		reqquoteamt: json["reqquoteamt"], 
		meetingpreftime: json["meetingpreftime"], 
		created: json["created"], 
		updated: json["updated"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"personId": personId, 
		"name": name, 
		"phone": phone, 
		"mobilePhone": mobilePhone, 
		"pict": pict, 
		"email": email, 
		"website": website, 
		"address": address, 
		"dateofinquiry": dateofinquiry, 
		"requestedqty": requestedqty, 
		"reqquoteamt": reqquoteamt, 
		"meetingpreftime": meetingpreftime, 
		"created": created, 
		"updated": updated, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Person Id": personId, 
		"Name": name, 
		"Phone": phone, 
		"Mobile Phone": mobilePhone, 
		"Pict": pict, 
		"Email": email, 
		"Website": website, 
		"Address": address, 
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
