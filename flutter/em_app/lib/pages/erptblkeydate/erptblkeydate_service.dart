// ignore_for_file: avoid_print 
 
import 'dart:async'; 
import 'dart:convert'; 
 
import 'package:http/http.dart' as http; 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/erptblkeydate/erptblkeydate_model.dart'; 
 
//String apiUrl = "127.0.0.1:9080"; 
//String apiPathPrefix = "/emdbrest"; 
String apiPath = ""; 
var apiParam = {}; 
//String mType = "post"; 
//String connErrStr = "Check your Internet Connection!"; 
 
class ErpTblkeydateService { 
  //Returns List from the api using GET method. 
  static Future ErpTblkeydateViewAll() async { 
    try { 
      final response = await http 
          .get(Uri.http(apiUrl, apiPathPrefix + "/erp_tblkeydate/ViewAll"), headers: getEmApiHeaders()); 
      if (response.statusCode == 200) { 
        print("API ErpTblkeydateViewAll Get call Success ..."); 
        List<ErpTblkeydate> getList = erpTblkeydateFromJson(response.body); 
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
  static Future ErpTblkeydateViewAllIds() async { 
    try { 
      final response = await http 
          .get(Uri.http(apiUrl, apiPathPrefix + "/erp_tblkeydate/ViewAll"), headers: getEmApiHeaders()); 
      if (response.statusCode == 200) { 
        List<ErpTblkeydate> getList = erpTblkeydateFromJson(response.body); 
        List<String> dateofinquiryList = 
            getList.map((e) => e.dateofinquiry.toString()).toList(); 
        return dateofinquiryList; 
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
 
  //Get a single ErpTblkeydate by QUERY method 
  static Future ErpTblkeydateQuery(String dateofinquiry) async { 
    try { 
      // ignore: avoid_print 
      print(dateofinquiry); 
      Map<String, String> parameters = {'dateofinquiry': dateofinquiry.toString()}; 
      final response = await http.get( 
          Uri.http(apiUrl, apiPathPrefix + "/erp_tblkeydate/Query", parameters), headers: getEmApiHeaders()); 
 
      if (response.statusCode == 200) { 
        List<ErpTblkeydate> foundErpTblkeydate = erpTblkeydateFromJson(response.body); 
        ErpTblkeydate newErpTblkeydate = foundErpTblkeydate.elementAt(0); 
        return newErpTblkeydate; 
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
 
  static Future ErpTblkeydateCreate(Map newErpTblkeydate) async { 
    Uri uri = Uri.http(apiUrl, apiPathPrefix + "/erp_tblkeydate/Create"); 
    //Map<String, String> headers = {'Content-Type': 'application/json'}; 
    try { 
      final response = await http.post(uri, 
          body: jsonEncode(newErpTblkeydate), headers: getEmApiHeadersCU()); 
      final status = response.statusCode; 
      if (status == 200 || status == 201) { 
        // ignore: avoid_print 
        print("Inside Create try  Block"); 
        return "ErpTblkeydate Added Successfully"; 
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
  static Future ErpTblkeydateEdit( 	
	      String dateofinquiry, ErpTblkeydate erpTblkeydate) async { 	
		try { 	
	      //print(dateofinquiry); 	
		  Map<String, String> parameters = {'dateofinquiry': dateofinquiry.toString()}; 
    	Uri uri = Uri.http(apiUrl, apiPathPrefix + "/erp_tblkeydate/Update", parameters); 
    	//Map<String, String> headers = {'Content-Type': 'application/json'}; 
      	final response = await http.put(uri, 
          body: jsonEncode(erpTblkeydate), headers: getEmApiHeadersCU()); 
	 	
	      final status = response.statusCode; 	
	      if (status == 200) { 	
	        /* 	
	        List<ErpTblkeydate> foundErpTblkeydate = 	
	            erpTblkeydateFromJson(response.body); 	
	        ErpTblkeydate newErpTblkeydate = 	
	            foundErpTblkeydate.elementAt(0); 	
	        return newErpTblkeydate; 	
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
	  static Future ErpTblkeydateDelete(String dateofinquiry) async { 	
		try { 	
	      //print(dateofinquiry); 	
		  Map<String, String> parameters = {'dateofinquiry': dateofinquiry.toString()}; 
	      final response = await http.delete(Uri.http( 	
	          apiUrl, apiPathPrefix + "/erp_tblkeydate/Delete", parameters), headers: getEmApiHeaders()); 	
	 	
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
 
