import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<LegalIntakeView> legalIntakeViewFromJson(String str) => 
    List<LegalIntakeView>.from(json.decode(str).map((x) => LegalIntakeView.fromJson(x))); 
 
String legalIntakeViewToJson(List<LegalIntakeView> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class LegalIntakeView { 
  LegalIntakeView({ 
		required this.id, 
		this.fullName, 
		this.dateSubmitted, 
		this.reviewStatus, 
		this.dateOfBirth, 
		this.gender, 
		this.placeOfBirthCity, 
		this.driversLicenseNumber, 
		this.currentAddress, 
		this.email, 
		this.employmentAddressZip, 
  }); 
 
		int id; 
		String? fullName; 
		String? dateSubmitted; 
		String? reviewStatus; 
		String? dateOfBirth; 
		String? gender; 
		String? placeOfBirthCity; 
		int? driversLicenseNumber; 
		String? currentAddress; 
		String? email; 
		int? employmentAddressZip; 
 
  factory LegalIntakeView.fromJson(Map<String, dynamic> json) => LegalIntakeView( 
		id: json["id"], 
		fullName: json["fullName"], 
		dateSubmitted: json["dateSubmitted"], 
		reviewStatus: json["reviewStatus"], 
		dateOfBirth: json["dateOfBirth"], 
		gender: json["gender"], 
		placeOfBirthCity: json["placeOfBirthCity"], 
		driversLicenseNumber: json["driversLicenseNumber"], 
		currentAddress: json["currentAddress"], 
		email: json["email"], 
		employmentAddressZip: json["employmentAddressZip"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"fullName": fullName, 
		"dateSubmitted": dateSubmitted, 
		"reviewStatus": reviewStatus, 
		"dateOfBirth": dateOfBirth, 
		"gender": gender, 
		"placeOfBirthCity": placeOfBirthCity, 
		"driversLicenseNumber": driversLicenseNumber, 
		"currentAddress": currentAddress, 
		"email": email, 
		"employmentAddressZip": employmentAddressZip, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Full Name": fullName, 
		"Date Submitted": dateSubmitted, 
		"Review Status": reviewStatus, 
		"Date Of Birth": dateOfBirth, 
		"Gender": gender, 
		"Place Of Birth City": placeOfBirthCity, 
		"Drivers License Number": driversLicenseNumber, 
		"Current Address": currentAddress, 
		"Email": email, 
		"Employment Address Zip": employmentAddressZip, 
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
        case "Drivers License Number": { ret = getEmFmtNumOpt(val); } break;	 
        case "Employment Address Zip": { ret = getEmFmtNumOpt(val); } break;	 
        default: { 
        ret = val.toString(); 
        } 
        } 
        return ret; 
} 
 
} 
