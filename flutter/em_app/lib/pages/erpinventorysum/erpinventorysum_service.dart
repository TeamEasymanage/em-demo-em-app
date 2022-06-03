// ignore_for_file: avoid_print 
 
import 'dart:async'; 
import 'dart:convert'; 
 
import 'package:http/http.dart' as http; 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/erpinventorysum/erpinventorysum_model.dart'; 
 
//String apiUrl = "127.0.0.1:9080"; 
//String apiPathPrefix = "/emdbrest"; 
String apiPath = ""; 
var apiParam = {}; 
//String mType = "post"; 
//String connErrStr = "Check your Internet Connection!"; 
 
class ErpInventorySumService { 
  //Returns List from the api using GET method. 
  static Future ErpInventorySumViewAll() async { 
    try { 
      final response = await http 
          .get(Uri.http(apiUrl, apiPathPrefix + "/erp_inventory_sum/ViewAll"), headers: getEmApiHeaders()); 
      if (response.statusCode == 200) { 
        print("API ErpInventorySumViewAll Get call Success ..."); 
        List<ErpInventorySum> getList = erpInventorySumFromJson(response.body); 
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
  static Future ErpInventorySumViewAllIds() async { 
    try { 
      final response = await http 
          .get(Uri.http(apiUrl, apiPathPrefix + "/erp_inventory_sum/ViewAll"), headers: getEmApiHeaders()); 
      if (response.statusCode == 200) { 
        List<ErpInventorySum> getList = erpInventorySumFromJson(response.body); 
        List<String> yearList = 
            getList.map((e) => e.year.toString()).toList(); 
        return yearList; 
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
 
  //Get a single ErpInventorySum by QUERY method 
  static Future ErpInventorySumQuery(int year) async { 
    try { 
      // ignore: avoid_print 
      print(year); 
      Map<String, String> parameters = {'year': year.toString()}; 
      final response = await http.get( 
          Uri.http(apiUrl, apiPathPrefix + "/erp_inventory_sum/Query", parameters), headers: getEmApiHeaders()); 
 
      if (response.statusCode == 200) { 
        List<ErpInventorySum> foundErpInventorySum = erpInventorySumFromJson(response.body); 
        ErpInventorySum newErpInventorySum = foundErpInventorySum.elementAt(0); 
        return newErpInventorySum; 
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
 
  static Future ErpInventorySumCreate(Map newErpInventorySum) async { 
    Uri uri = Uri.http(apiUrl, apiPathPrefix + "/erp_inventory_sum/Create"); 
    //Map<String, String> headers = {'Content-Type': 'application/json'}; 
    try { 
      final response = await http.post(uri, 
          body: jsonEncode(newErpInventorySum), headers: getEmApiHeadersCU()); 
      final status = response.statusCode; 
      if (status == 200 || status == 201) { 
        // ignore: avoid_print 
        print("Inside Create try  Block"); 
        return "ErpInventorySum Added Successfully"; 
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
  static Future ErpInventorySumEdit( 	
	      int year, ErpInventorySum erpInventorySum) async { 	
		try { 	
	      //print(year); 	
		  Map<String, String> parameters = {'year': year.toString()}; 
    	Uri uri = Uri.http(apiUrl, apiPathPrefix + "/erp_inventory_sum/Update", parameters); 
    	//Map<String, String> headers = {'Content-Type': 'application/json'}; 
      	final response = await http.put(uri, 
          body: jsonEncode(erpInventorySum), headers: getEmApiHeadersCU()); 
	 	
	      final status = response.statusCode; 	
	      if (status == 200) { 	
	        /* 	
	        List<ErpInventorySum> foundErpInventorySum = 	
	            erpInventorySumFromJson(response.body); 	
	        ErpInventorySum newErpInventorySum = 	
	            foundErpInventorySum.elementAt(0); 	
	        return newErpInventorySum; 	
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
	  static Future ErpInventorySumDelete(int year) async { 	
		try { 	
	      //print(year); 	
		  Map<String, String> parameters = {'year': year.toString()}; 
	      final response = await http.delete(Uri.http( 	
	          apiUrl, apiPathPrefix + "/erp_inventory_sum/Delete", parameters), headers: getEmApiHeaders()); 	
	 	
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
 
