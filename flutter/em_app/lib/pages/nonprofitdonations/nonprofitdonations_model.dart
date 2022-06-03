import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<NonProfitDonations> nonProfitDonationsFromJson(String str) => 
    List<NonProfitDonations>.from(json.decode(str).map((x) => NonProfitDonations.fromJson(x))); 
 
String nonProfitDonationsToJson(List<NonProfitDonations> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class NonProfitDonations { 
  NonProfitDonations({ 
		required this.id, 
		this.giftId, 
		this.designatedProgram, 
		this.amount, 
		this.donor, 
		this.firstContacted, 
		this.dateOfDonation, 
  }); 
 
		int id; 
		String? giftId; 
		String? designatedProgram; 
		String? amount; 
		String? donor; 
		String? firstContacted; 
		String? dateOfDonation; 
 
  factory NonProfitDonations.fromJson(Map<String, dynamic> json) => NonProfitDonations( 
		id: json["id"], 
		giftId: json["giftId"], 
		designatedProgram: json["designatedProgram"], 
		amount: json["amount"], 
		donor: json["donor"], 
		firstContacted: json["firstContacted"], 
		dateOfDonation: json["dateOfDonation"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"giftId": giftId, 
		"designatedProgram": designatedProgram, 
		"amount": amount, 
		"donor": donor, 
		"firstContacted": firstContacted, 
		"dateOfDonation": dateOfDonation, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Gift Id": giftId, 
		"Designated Program": designatedProgram, 
		"Amount": amount, 
		"Donor": donor, 
		"First Contacted": firstContacted, 
		"Date Of Donation": dateOfDonation, 
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
