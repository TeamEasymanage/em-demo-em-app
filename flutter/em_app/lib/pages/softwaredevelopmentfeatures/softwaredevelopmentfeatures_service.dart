// ignore_for_file: avoid_print 
 
import 'dart:async'; 
import 'dart:convert'; 
 
import 'package:http/http.dart' as http; 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/softwaredevelopmentfeatures/softwaredevelopmentfeatures_model.dart'; 
 
//String apiUrl = "127.0.0.1:9080"; 
//String apiPathPrefix = "/emdbrest"; 
String apiPath = ""; 
var apiParam = {}; 
//String mType = "post"; 
//String connErrStr = "Check your Internet Connection!"; 
 
class SoftwareDevelopmentFeaturesService { 
  //Returns List from the api using GET method. 
  static Future SoftwareDevelopmentFeaturesViewAll() async { 
    try { 
      final response = await http 
          .get(Uri.http(apiUrl, apiPathPrefix + "/software_development_features/ViewAll"), headers: getEmApiHeaders()); 
      if (response.statusCode == 200) { 
        print("API SoftwareDevelopmentFeaturesViewAll Get call Success ..."); 
        List<SoftwareDevelopmentFeatures> getList = softwareDevelopmentFeaturesFromJson(response.body); 
        return getList; 
      } else { 
        return "Error: " + 
            response.statusCode.toString() + " ( " + 
            response.reasonPhrase.toString() + 
            " ) occured!"; 
      } 
    } catch (err) { 
      print(err);  
      return connErrStr + " ( " + err.toString() + " ) "; 
    } 
  } 
 
  //Returns a list of ids from the api using GET method. 
  static Future SoftwareDevelopmentFeaturesViewAllIds() async { 
    try { 
      final response = await http 
          .get(Uri.http(apiUrl, apiPathPrefix + "/software_development_features/ViewAll"), headers: getEmApiHeaders()); 
      if (response.statusCode == 200) { 
        List<SoftwareDevelopmentFeatures> getList = softwareDevelopmentFeaturesFromJson(response.body); 
        List<String> idList = 
            getList.map((e) => e.id.toString()).toList(); 
        return idList; 
      } else { 
        return "Error: " + 
            response.statusCode.toString() + " ( " + 
            response.reasonPhrase.toString() + 
            " ) occured!"; 
      } 
    } catch (err) { 
      print(err);  
      return connErrStr + " ( " + err.toString() + " ) "; 
    } 
  } 
 
  //Get a single SoftwareDevelopmentFeatures by QUERY method 
  static Future SoftwareDevelopmentFeaturesQuery(int id) async { 
    try { 
      // ignore: avoid_print 
      print(id); 
      Map<String, String> parameters = {'id': id.toString()}; 
      final response = await http.get( 
          Uri.http(apiUrl, apiPathPrefix + "/software_development_features/Query", parameters), headers: getEmApiHeaders()); 
 
      if (response.statusCode == 200) { 
        List<SoftwareDevelopmentFeatures> foundSoftwareDevelopmentFeatures = softwareDevelopmentFeaturesFromJson(response.body); 
        SoftwareDevelopmentFeatures newSoftwareDevelopmentFeatures = foundSoftwareDevelopmentFeatures.elementAt(0); 
        return newSoftwareDevelopmentFeatures; 
      } else { 
        return "Error: " + 
            response.statusCode.toString() + " ( " + 
            response.reasonPhrase.toString() + 
            " ) occured!"; 
      } 
    } catch (err) { 
      print(err);  
      return connErrStr + " ( " + err.toString() + " ) "; 
    } 
  } 
 
  static Future SoftwareDevelopmentFeaturesCreate(Map newSoftwareDevelopmentFeatures) async { 
    Uri uri = Uri.http(apiUrl, apiPathPrefix + "/software_development_features/Create"); 
    //Map<String, String> headers = {'Content-Type': 'application/json'}; 
    try { 
      final response = await http.post(uri, 
          body: jsonEncode(newSoftwareDevelopmentFeatures), headers: getEmApiHeadersCU()); 
      final status = response.statusCode; 
      if (status == 200 || status == 201) { 
        // ignore: avoid_print 
        print("Inside Create try  Block"); 
        return "SoftwareDevelopmentFeatures Added Successfully"; 
      } else { 
        // ignore: avoid_print 
        print("Error while posting data $status "); 
        return "Error: " + 
            response.statusCode.toString() + " ( " + 
            response.reasonPhrase.toString() + 
            " ) occured!"; 
      } 
    } catch (err) { 
      print(err);  
      return connErrStr + " ( " + err.toString() + " ) "; 
    } 
  } 
  //Call Edit Record API 	
  static Future SoftwareDevelopmentFeaturesEdit( 	
	      int id, SoftwareDevelopmentFeatures softwareDevelopmentFeatures) async { 	
		try { 	
	      //print(id); 	
		  Map<String, String> parameters = {'id': id.toString()}; 
    	Uri uri = Uri.http(apiUrl, apiPathPrefix + "/software_development_features/Update", parameters); 
    	//Map<String, String> headers = {'Content-Type': 'application/json'}; 
      	final response = await http.put(uri, 
          body: jsonEncode(softwareDevelopmentFeatures), headers: getEmApiHeadersCU()); 
	 	
	      final status = response.statusCode; 	
	      if (status == 200) { 	
	        /* 	
	        List<SoftwareDevelopmentFeatures> foundSoftwareDevelopmentFeatures = 	
	            softwareDevelopmentFeaturesFromJson(response.body); 	
	        SoftwareDevelopmentFeatures newSoftwareDevelopmentFeatures = 	
	            foundSoftwareDevelopmentFeatures.elementAt(0); 	
	        return newSoftwareDevelopmentFeatures; 	
	        */ 	
	        return "Record Updated Successfully"; 	
	      } else { 	
        return "Error: " + 
            response.statusCode.toString() + " ( " + 
            response.reasonPhrase.toString() + 
            " ) occured!"; 
	      } 	
    } catch (err) { 
      print(err);  
      return connErrStr + " ( " + err.toString() + " ) "; 
    } 
	  } 	
	 	
	  //Call Delete Record API 	
	  static Future SoftwareDevelopmentFeaturesDelete(int id) async { 	
		try { 	
	      //print(id); 	
		  Map<String, String> parameters = {'id': id.toString()}; 
	      final response = await http.delete(Uri.http( 	
	          apiUrl, apiPathPrefix + "/software_development_features/Delete", parameters), headers: getEmApiHeaders()); 	
	 	
	      final status = response.statusCode; 	
	      if (status == 200) { 	
	        //int delCount = response.body.delCount; 	
	        return "Record Deleted Successfully"; 	
	      } else { 	
        return "Error: " + 
            response.statusCode.toString() + " ( " + 
            response.reasonPhrase.toString() + 
            " ) occured!"; 
	      } 	
    } catch (err) { 
      print(err);  
      return connErrStr + " ( " + err.toString() + " ) "; 
    } 
	  } 	
} 
 
