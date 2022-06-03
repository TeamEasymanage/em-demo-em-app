import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<EventInvitationView> eventInvitationViewFromJson(String str) => 
    List<EventInvitationView>.from(json.decode(str).map((x) => EventInvitationView.fromJson(x))); 
 
String eventInvitationViewToJson(List<EventInvitationView> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class EventInvitationView { 
  EventInvitationView({ 
		required this.id, 
		this.guest, 
		this.address, 
		this.phoneNumber, 
		this.plusOne, 
		this.guestCount, 
		this.relatedEvent, 
  }); 
 
		int id; 
		String? guest; 
		String? address; 
		String? phoneNumber; 
		String? plusOne; 
		int? guestCount; 
		String? relatedEvent; 
 
  factory EventInvitationView.fromJson(Map<String, dynamic> json) => EventInvitationView( 
		id: json["id"], 
		guest: json["guest"], 
		address: json["address"], 
		phoneNumber: json["phoneNumber"], 
		plusOne: json["plusOne"], 
		guestCount: json["guestCount"], 
		relatedEvent: json["relatedEvent"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"guest": guest, 
		"address": address, 
		"phoneNumber": phoneNumber, 
		"plusOne": plusOne, 
		"guestCount": guestCount, 
		"relatedEvent": relatedEvent, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Guest": guest, 
		"Address": address, 
		"Phone Number": phoneNumber, 
		"Plus One": plusOne, 
		"Guest Count": guestCount, 
		"Related Event": relatedEvent, 
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
        case "Guest Count": { ret = getEmFmtNumOpt(val); } break;	 
        default: { 
        ret = val.toString(); 
        } 
        } 
        return ret; 
} 
 
} 
