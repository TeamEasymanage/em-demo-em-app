import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<HobbiesArtView> hobbiesArtViewFromJson(String str) => 
    List<HobbiesArtView>.from(json.decode(str).map((x) => HobbiesArtView.fromJson(x))); 
 
String hobbiesArtViewToJson(List<HobbiesArtView> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class HobbiesArtView { 
  HobbiesArtView({ 
		required this.id, 
		this.name, 
		this.myPricePaid, 
		this.insured, 
		this.artist, 
		this.myNotes, 
  }); 
 
		int id; 
		String? name; 
		String? myPricePaid; 
		String? insured; 
		String? artist; 
		String? myNotes; 
 
  factory HobbiesArtView.fromJson(Map<String, dynamic> json) => HobbiesArtView( 
		id: json["id"], 
		name: json["name"], 
		myPricePaid: json["myPricePaid"], 
		insured: json["insured"], 
		artist: json["artist"], 
		myNotes: json["myNotes"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"name": name, 
		"myPricePaid": myPricePaid, 
		"insured": insured, 
		"artist": artist, 
		"myNotes": myNotes, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Name": name, 
		"My Price Paid": myPricePaid, 
		"Insured": insured, 
		"Artist": artist, 
		"My Notes": myNotes, 
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
