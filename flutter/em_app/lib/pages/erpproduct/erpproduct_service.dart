// ignore_for_file: avoid_print 
 
import 'dart:async'; 
import 'dart:convert'; 
 
import 'package:http/http.dart' as http; 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/erpproduct/erpproduct_model.dart'; 
 
//String apiUrl = "127.0.0.1:9080"; 
//String apiPathPrefix = "/emdbrest"; 
String apiPath = ""; 
var apiParam = {}; 
//String mType = "post"; 
//String connErrStr = "Check your Internet Connection!"; 
 
class ErpProductService { 
  //Returns List from the api using GET method. 
  static Future ErpProductViewAll() async { 
    try { 
      final response = await http 
          .get(Uri.http(apiUrl, apiPathPrefix + "/erp_product/ViewAll"), headers: getEmApiHeaders()); 
      if (response.statusCode == 200) { 
        print("API ErpProductViewAll Get call Success ..."); 
        List<ErpProduct> getList = erpProductFromJson(response.body); 
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
  static Future ErpProductViewAllIds() async { 
    try { 
      final response = await http 
          .get(Uri.http(apiUrl, apiPathPrefix + "/erp_product/ViewAll"), headers: getEmApiHeaders()); 
      if (response.statusCode == 200) { 
        List<ErpProduct> getList = erpProductFromJson(response.body); 
        List<String> productIdList = 
            getList.map((e) => e.productId.toString()).toList(); 
        return productIdList; 
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
 
  //Get a single ErpProduct by QUERY method 
  static Future ErpProductQuery(int productId) async { 
    try { 
      // ignore: avoid_print 
      print(productId); 
      Map<String, String> parameters = {'productId': productId.toString()}; 
      final response = await http.get( 
          Uri.http(apiUrl, apiPathPrefix + "/erp_product/Query", parameters), headers: getEmApiHeaders()); 
 
      if (response.statusCode == 200) { 
        List<ErpProduct> foundErpProduct = erpProductFromJson(response.body); 
        ErpProduct newErpProduct = foundErpProduct.elementAt(0); 
        return newErpProduct; 
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
 
  static Future ErpProductCreate(Map newErpProduct) async { 
    Uri uri = Uri.http(apiUrl, apiPathPrefix + "/erp_product/Create"); 
    //Map<String, String> headers = {'Content-Type': 'application/json'}; 
    try { 
      final response = await http.post(uri, 
          body: jsonEncode(newErpProduct), headers: getEmApiHeadersCU()); 
      final status = response.statusCode; 
      if (status == 200 || status == 201) { 
        // ignore: avoid_print 
        print("Inside Create try  Block"); 
        return "ErpProduct Added Successfully"; 
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
  static Future ErpProductEdit( 	
	      int productId, ErpProduct erpProduct) async { 	
		try { 	
	      //print(productId); 	
		  Map<String, String> parameters = {'productId': productId.toString()}; 
    	Uri uri = Uri.http(apiUrl, apiPathPrefix + "/erp_product/Update", parameters); 
    	//Map<String, String> headers = {'Content-Type': 'application/json'}; 
      	final response = await http.put(uri, 
          body: jsonEncode(erpProduct), headers: getEmApiHeadersCU()); 
	 	
	      final status = response.statusCode; 	
	      if (status == 200) { 	
	        /* 	
	        List<ErpProduct> foundErpProduct = 	
	            erpProductFromJson(response.body); 	
	        ErpProduct newErpProduct = 	
	            foundErpProduct.elementAt(0); 	
	        return newErpProduct; 	
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
	  static Future ErpProductDelete(int productId) async { 	
		try { 	
	      //print(productId); 	
		  Map<String, String> parameters = {'productId': productId.toString()}; 
	      final response = await http.delete(Uri.http( 	
	          apiUrl, apiPathPrefix + "/erp_product/Delete", parameters), headers: getEmApiHeaders()); 	
	 	
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
 
