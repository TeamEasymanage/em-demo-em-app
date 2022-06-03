// ignore_for_file: avoid_print 
 
import 'dart:async'; 
import 'dart:convert'; 
 
import 'package:http/http.dart' as http; 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/erpinventory/erpinventory_model.dart'; 
 
//String apiUrl = "127.0.0.1:9080"; 
//String apiPathPrefix = "/emdbrest"; 
String apiPath = ""; 
var apiParam = {}; 
//String mType = "post"; 
//String connErrStr = "Check your Internet Connection!"; 
 
class ErpInventoryService { 
  //Returns List from the api using GET method. 
  static Future ErpInventoryViewAll() async { 
    try { 
      final response = await http 
          .get(Uri.http(apiUrl, apiPathPrefix + "/erp_inventory/ViewAll"), headers: getEmApiHeaders()); 
      if (response.statusCode == 200) { 
        print("API ErpInventoryViewAll Get call Success ..."); 
        List<ErpInventory> getList = erpInventoryFromJson(response.body); 
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
  static Future ErpInventoryViewAllIds() async { 
    try { 
      final response = await http 
          .get(Uri.http(apiUrl, apiPathPrefix + "/erp_inventory/ViewAll"), headers: getEmApiHeaders()); 
      if (response.statusCode == 200) { 
        List<ErpInventory> getList = erpInventoryFromJson(response.body); 
        List<String> inventoryIdList = 
            getList.map((e) => e.inventoryId.toString()).toList(); 
        return inventoryIdList; 
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
 
  //Get a single ErpInventory by QUERY method 
  static Future ErpInventoryQuery(int inventoryId) async { 
    try { 
      // ignore: avoid_print 
      print(inventoryId); 
      Map<String, String> parameters = {'inventoryId': inventoryId.toString()}; 
      final response = await http.get( 
          Uri.http(apiUrl, apiPathPrefix + "/erp_inventory/Query", parameters), headers: getEmApiHeaders()); 
 
      if (response.statusCode == 200) { 
        List<ErpInventory> foundErpInventory = erpInventoryFromJson(response.body); 
        ErpInventory newErpInventory = foundErpInventory.elementAt(0); 
        return newErpInventory; 
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
 
  static Future ErpInventoryCreate(Map newErpInventory) async { 
    Uri uri = Uri.http(apiUrl, apiPathPrefix + "/erp_inventory/Create"); 
    //Map<String, String> headers = {'Content-Type': 'application/json'}; 
    try { 
      final response = await http.post(uri, 
          body: jsonEncode(newErpInventory), headers: getEmApiHeadersCU()); 
      final status = response.statusCode; 
      if (status == 200 || status == 201) { 
        // ignore: avoid_print 
        print("Inside Create try  Block"); 
        return "ErpInventory Added Successfully"; 
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
  static Future ErpInventoryEdit( 	
	      int inventoryId, ErpInventory erpInventory) async { 	
		try { 	
	      //print(inventoryId); 	
		  Map<String, String> parameters = {'inventoryId': inventoryId.toString()}; 
    	Uri uri = Uri.http(apiUrl, apiPathPrefix + "/erp_inventory/Update", parameters); 
    	//Map<String, String> headers = {'Content-Type': 'application/json'}; 
      	final response = await http.put(uri, 
          body: jsonEncode(erpInventory), headers: getEmApiHeadersCU()); 
	 	
	      final status = response.statusCode; 	
	      if (status == 200) { 	
	        /* 	
	        List<ErpInventory> foundErpInventory = 	
	            erpInventoryFromJson(response.body); 	
	        ErpInventory newErpInventory = 	
	            foundErpInventory.elementAt(0); 	
	        return newErpInventory; 	
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
	  static Future ErpInventoryDelete(int inventoryId) async { 	
		try { 	
	      //print(inventoryId); 	
		  Map<String, String> parameters = {'inventoryId': inventoryId.toString()}; 
	      final response = await http.delete(Uri.http( 	
	          apiUrl, apiPathPrefix + "/erp_inventory/Delete", parameters), headers: getEmApiHeaders()); 	
	 	
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
 
