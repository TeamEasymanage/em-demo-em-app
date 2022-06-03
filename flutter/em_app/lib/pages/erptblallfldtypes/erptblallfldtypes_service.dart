// ignore_for_file: avoid_print 
 
import 'dart:async'; 
import 'dart:convert'; 
 
import 'package:http/http.dart' as http; 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/erptblallfldtypes/erptblallfldtypes_model.dart'; 
 
//String apiUrl = "127.0.0.1:9080"; 
//String apiPathPrefix = "/emdbrest"; 
String apiPath = ""; 
var apiParam = {}; 
//String mType = "post"; 
//String connErrStr = "Check your Internet Connection!"; 
 
class ErpTblallfldtypesService { 
  //Returns List from the api using GET method. 
  static Future ErpTblallfldtypesViewAll() async { 
    try { 
      final response = await http 
          .get(Uri.http(apiUrl, apiPathPrefix + "/erp_tblallfldtypes/ViewAll"), headers: getEmApiHeaders()); 
      if (response.statusCode == 200) { 
        print("API ErpTblallfldtypesViewAll Get call Success ..."); 
        List<ErpTblallfldtypes> getList = erpTblallfldtypesFromJson(response.body); 
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
  static Future ErpTblallfldtypesViewAllIds() async { 
    try { 
      final response = await http 
          .get(Uri.http(apiUrl, apiPathPrefix + "/erp_tblallfldtypes/ViewAll"), headers: getEmApiHeaders()); 
      if (response.statusCode == 200) { 
        List<ErpTblallfldtypes> getList = erpTblallfldtypesFromJson(response.body); 
        List<String> personIdList = 
            getList.map((e) => e.personId.toString()).toList(); 
        return personIdList; 
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
 
  //Get a single ErpTblallfldtypes by QUERY method 
  static Future ErpTblallfldtypesQuery(String personId) async { 
    try { 
      // ignore: avoid_print 
      print(personId); 
      Map<String, String> parameters = {'personId': personId.toString()}; 
      final response = await http.get( 
          Uri.http(apiUrl, apiPathPrefix + "/erp_tblallfldtypes/Query", parameters), headers: getEmApiHeaders()); 
 
      if (response.statusCode == 200) { 
        List<ErpTblallfldtypes> foundErpTblallfldtypes = erpTblallfldtypesFromJson(response.body); 
        ErpTblallfldtypes newErpTblallfldtypes = foundErpTblallfldtypes.elementAt(0); 
        return newErpTblallfldtypes; 
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
 
  static Future ErpTblallfldtypesCreate(Map newErpTblallfldtypes) async { 
    Uri uri = Uri.http(apiUrl, apiPathPrefix + "/erp_tblallfldtypes/Create"); 
    //Map<String, String> headers = {'Content-Type': 'application/json'}; 
    try { 
      final response = await http.post(uri, 
          body: jsonEncode(newErpTblallfldtypes), headers: getEmApiHeadersCU()); 
      final status = response.statusCode; 
      if (status == 200 || status == 201) { 
        // ignore: avoid_print 
        print("Inside Create try  Block"); 
        return "ErpTblallfldtypes Added Successfully"; 
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
  static Future ErpTblallfldtypesEdit( 	
	      String personId, ErpTblallfldtypes erpTblallfldtypes) async { 	
		try { 	
	      //print(personId); 	
		  Map<String, String> parameters = {'personId': personId.toString()}; 
    	Uri uri = Uri.http(apiUrl, apiPathPrefix + "/erp_tblallfldtypes/Update", parameters); 
    	//Map<String, String> headers = {'Content-Type': 'application/json'}; 
      	final response = await http.put(uri, 
          body: jsonEncode(erpTblallfldtypes), headers: getEmApiHeadersCU()); 
	 	
	      final status = response.statusCode; 	
	      if (status == 200) { 	
	        /* 	
	        List<ErpTblallfldtypes> foundErpTblallfldtypes = 	
	            erpTblallfldtypesFromJson(response.body); 	
	        ErpTblallfldtypes newErpTblallfldtypes = 	
	            foundErpTblallfldtypes.elementAt(0); 	
	        return newErpTblallfldtypes; 	
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
	  static Future ErpTblallfldtypesDelete(String personId) async { 	
		try { 	
	      //print(personId); 	
		  Map<String, String> parameters = {'personId': personId.toString()}; 
	      final response = await http.delete(Uri.http( 	
	          apiUrl, apiPathPrefix + "/erp_tblallfldtypes/Delete", parameters), headers: getEmApiHeaders()); 	
	 	
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
 
