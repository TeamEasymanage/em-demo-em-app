import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<ErpInventory> erpInventoryFromJson(String str) => 
    List<ErpInventory>.from(json.decode(str).map((x) => ErpInventory.fromJson(x))); 
 
String erpInventoryToJson(List<ErpInventory> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class ErpInventory { 
  ErpInventory({ 
		required this.inventoryId, 
		this.invLocation, 
		this.invDate, 
		this.invQty, 
		this.invMinQty, 
		this.invCost, 
  }); 
 
		int inventoryId; 
		String? invLocation; 
		String? invDate; 
		int? invQty; 
		int? invMinQty; 
		double? invCost; 
 
  factory ErpInventory.fromJson(Map<String, dynamic> json) => ErpInventory( 
		inventoryId: json["inventoryId"], 
		invLocation: json["invLocation"], 
		invDate: json["invDate"], 
		invQty: json["invQty"], 
		invMinQty: json["invMinQty"], 
		invCost: json["invCost"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"inventoryId": inventoryId, 
		"invLocation": invLocation, 
		"invDate": invDate, 
		"invQty": invQty, 
		"invMinQty": invMinQty, 
		"invCost": invCost, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Inventory Id": inventoryId, 
		"Inv Location": invLocation, 
		"Inv Date": invDate, 
		"Inv Qty": invQty, 
		"Inv Min Qty": invMinQty, 
		"Inv Cost": invCost, 
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
 
        case "Inventory Id": { ret = getEmFmtNumOpt(val); } break;	 
        case "Inv Qty": { ret = getEmFmtNumOpt(val); } break;	 
        case "Inv Min Qty": { ret = getEmFmtNumOpt(val); } break;	 
        //case "Inv Cost": { ret = getEmFmtCurOpt(val); } break;	 
        default: { 
        ret = val.toString(); 
        } 
        } 
        return ret; 
} 
 
} 
