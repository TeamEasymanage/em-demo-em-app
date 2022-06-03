// ignore_for_file: avoid_print 
 
import 'dart:async'; 
import 'dart:convert'; 
 
import 'package:http/http.dart' as http; 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/employee/employee_model.dart'; 
 
//String apiUrl = "127.0.0.1:9080"; 
//String apiPathPrefix = "/emdbrest"; 
String apiPath = ""; 
var apiParam = {}; 
//String mType = "post"; 
//String connErrStr = "Check your Internet Connection!"; 
 
class EmployeeService { 
  //Returns List from the api using GET method. 
  static Future EmployeeViewAll() async { 
    try { 
      final response = await http 
          .get(Uri.http(apiUrl, apiPathPrefix + "/employee/ViewAll"), headers: getEmApiHeaders()); 
      if (response.statusCode == 200) { 
        print("API EmployeeViewAll Get call Success ..."); 
        List<Employee> getList = employeeFromJson(response.body); 
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
  static Future EmployeeViewAllIds() async { 
    try { 
      final response = await http 
          .get(Uri.http(apiUrl, apiPathPrefix + "/employee/ViewAll"), headers: getEmApiHeaders()); 
      if (response.statusCode == 200) { 
        List<Employee> getList = employeeFromJson(response.body); 
        List<String> nameList = 
            getList.map((e) => e.name.toString()).toList(); 
        return nameList; 
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
 
  //Get a single Employee by QUERY method 
  static Future EmployeeQuery(String name) async { 
    try { 
      // ignore: avoid_print 
      print(name); 
      Map<String, String> parameters = {'name': name.toString()}; 
      final response = await http.get( 
          Uri.http(apiUrl, apiPathPrefix + "/employee/Query", parameters), headers: getEmApiHeaders()); 
 
      if (response.statusCode == 200) { 
        List<Employee> foundEmployee = employeeFromJson(response.body); 
        Employee newEmployee = foundEmployee.elementAt(0); 
        return newEmployee; 
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
 
  static Future EmployeeCreate(Map newEmployee) async { 
    Uri uri = Uri.http(apiUrl, apiPathPrefix + "/employee/Create"); 
    //Map<String, String> headers = {'Content-Type': 'application/json'}; 
    try { 
      final response = await http.post(uri, 
          body: jsonEncode(newEmployee), headers: getEmApiHeadersCU()); 
      final status = response.statusCode; 
      if (status == 200 || status == 201) { 
        // ignore: avoid_print 
        print("Inside Create try  Block"); 
        return "Employee Added Successfully"; 
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
  static Future EmployeeEdit( 	
	      String name, Employee employee) async { 	
		try { 	
	      //print(name); 	
		  Map<String, String> parameters = {'name': name.toString()}; 
    	Uri uri = Uri.http(apiUrl, apiPathPrefix + "/employee/Update", parameters); 
    	//Map<String, String> headers = {'Content-Type': 'application/json'}; 
      	final response = await http.put(uri, 
          body: jsonEncode(employee), headers: getEmApiHeadersCU()); 
	 	
	      final status = response.statusCode; 	
	      if (status == 200) { 	
	        /* 	
	        List<Employee> foundEmployee = 	
	            employeeFromJson(response.body); 	
	        Employee newEmployee = 	
	            foundEmployee.elementAt(0); 	
	        return newEmployee; 	
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
	  static Future EmployeeDelete(String name) async { 	
		try { 	
	      //print(name); 	
		  Map<String, String> parameters = {'name': name.toString()}; 
	      final response = await http.delete(Uri.http( 	
	          apiUrl, apiPathPrefix + "/employee/Delete", parameters), headers: getEmApiHeaders()); 	
	 	
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
 
