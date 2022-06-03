import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<SoftwareDevelopmentFeatures> softwareDevelopmentFeaturesFromJson(String str) => 
    List<SoftwareDevelopmentFeatures>.from(json.decode(str).map((x) => SoftwareDevelopmentFeatures.fromJson(x))); 
 
String softwareDevelopmentFeaturesToJson(List<SoftwareDevelopmentFeatures> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class SoftwareDevelopmentFeatures { 
  SoftwareDevelopmentFeatures({ 
		required this.id, 
		this.feature, 
		this.status, 
		this.productOwner, 
		this.launchOkrs, 
		this.featureCompleteDate, 
		this.featureLaunchDate, 
		this.marketingLaunchDate, 
		this.complexity, 
		this.value, 
  }); 
 
		int id; 
		String? feature; 
		String? status; 
		String? productOwner; 
		String? launchOkrs; 
		String? featureCompleteDate; 
		String? featureLaunchDate; 
		String? marketingLaunchDate; 
		String? complexity; 
		String? value; 
 
  factory SoftwareDevelopmentFeatures.fromJson(Map<String, dynamic> json) => SoftwareDevelopmentFeatures( 
		id: json["id"], 
		feature: json["feature"], 
		status: json["status"], 
		productOwner: json["productOwner"], 
		launchOkrs: json["launchOkrs"], 
		featureCompleteDate: json["featureCompleteDate"], 
		featureLaunchDate: json["featureLaunchDate"], 
		marketingLaunchDate: json["marketingLaunchDate"], 
		complexity: json["complexity"], 
		value: json["value"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"feature": feature, 
		"status": status, 
		"productOwner": productOwner, 
		"launchOkrs": launchOkrs, 
		"featureCompleteDate": featureCompleteDate, 
		"featureLaunchDate": featureLaunchDate, 
		"marketingLaunchDate": marketingLaunchDate, 
		"complexity": complexity, 
		"value": value, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Feature": feature, 
		"Status": status, 
		"Product Owner": productOwner, 
		"Launch Okrs": launchOkrs, 
		"Feature Complete Date": featureCompleteDate, 
		"Feature Launch Date": featureLaunchDate, 
		"Marketing Launch Date": marketingLaunchDate, 
		"Complexity": complexity, 
		"Value": value, 
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
