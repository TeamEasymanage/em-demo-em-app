import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<ErpProduct> erpProductFromJson(String str) => 
    List<ErpProduct>.from(json.decode(str).map((x) => ErpProduct.fromJson(x))); 
 
String erpProductToJson(List<ErpProduct> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class ErpProduct { 
  ErpProduct({ 
		required this.productId, 
		this.productDesc, 
		this.productCategory, 
		this.primarySupplier, 
		this.productPicture, 
  }); 
 
		int productId; 
		String? productDesc; 
		String? productCategory; 
		String? primarySupplier; 
		String? productPicture; 
 
  factory ErpProduct.fromJson(Map<String, dynamic> json) => ErpProduct( 
		productId: json["productId"], 
		productDesc: json["productDesc"], 
		productCategory: json["productCategory"], 
		primarySupplier: json["primarySupplier"], 
		productPicture: json["productPicture"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"productId": productId, 
		"productDesc": productDesc, 
		"productCategory": productCategory, 
		"primarySupplier": primarySupplier, 
		"productPicture": productPicture, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Product Id": productId, 
		"Product Desc": productDesc, 
		"Product Category": productCategory, 
		"Primary Supplier": primarySupplier, 
		"Product Picture": productPicture, 
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
 
        case "Product Id": { ret = getEmFmtNumOpt(val); } break;	 
        default: { 
        ret = val.toString(); 
        } 
        } 
        return ret; 
} 
 
} 
