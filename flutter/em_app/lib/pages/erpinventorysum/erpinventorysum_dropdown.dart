import 'package:flutter/material.dart'; 
import 'package:intl/intl.dart';  
 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/erpinventorysum/erpinventorysum_model.dart'; 
import 'package:em_app/pages/erpinventorysum/erpinventorysum_service.dart'; 
import 'package:em_app/pages/erpinventorysum/erpinventorysum_lib.dart'; 
 
class ErpInventorySumEditDd extends StatefulWidget { 
  //need 1st record column and type also 
  final int yearSelected; 
  const ErpInventorySumEditDd({Key? key, required this.yearSelected}) : super(key: key); 
 
  @override 
  _ErpInventorySumEditDdState createState() => _ErpInventorySumEditDdState(); 
} 
 
class _ErpInventorySumEditDdState extends State<ErpInventorySumEditDd> { 
 
  String errorMsg = timeErrStr; 
 
  bool _loading = false; 	
  bool _isKeySelected = false; 	
  //double fullFormHeight = 700; 	
 	
  List<String> _years = ["Select A Key Value"]; 	
  String _chosenValue = "Select A Key Value"; 	
	
  @override	
  void initState() {	
    super.initState();	
	
    _chosenValue = widget.yearSelected.toString();	
    _loading = true;	
	
    ErpInventorySumService.ErpInventorySumViewAllIds().then((ids) { 	
      if (ids is String) {	
        setState(() {	
          errorMsg = ids;	
        });	
      }	
      setState(() { 	
        _years = ids; 	
		//For 1st Column int | double , we call DropDown with value [0], hence need this 	
        _years.insert(0, "0");	
        _years.insert(0, "Select A Key Value");	
		 //Remove duplicates 	
        _years = _years.toSet().toList();	
        _loading = false;	
      });	
    });	
  } 	
 	
  @override 	
  Widget build(BuildContext context) { 	
    return Scaffold( 	
	     backgroundColor: Colors.blue.shade200,	
        appBar: AppBar( 	
          title: const Text("ErpInventorySum Edit Dd Form"), 	
          centerTitle: true, 	
        ), 	
        body: _loading 	
            ? EmShowProgress(msg: errorMsg)	
            : SingleChildScrollView(	
                child: Row(	
                  mainAxisAlignment: MainAxisAlignment.center,	
                  children: [	
                    Padding(	
                      padding: const EdgeInsets.only(top: 32.0),	
                      child: Container(	
						 width: emFormFixedWidth, //getEmFormWidth(context),	
                        //width: 600,	
                        //height: _isKeySelected ? fullFormHeight : 150,	
                        // margin: EdgeInsets.only(bottom: _isKeySelected ? 0 : 440),	
                        decoration: const BoxDecoration(	
                            boxShadow: [BoxShadow(color: Colors.white)],	
                            borderRadius:	
                                BorderRadius.all(Radius.circular(10.0))),	
                        child: Column(	
                          children: [	
                            Padding(	
                              padding: const EdgeInsets.only(top: 44),	
                              child: SingleChildScrollView(	
                                child: Row(	
                                  mainAxisAlignment: MainAxisAlignment.center,	
                                  children: [	
                                    const Text("Please Select A Key Value",	
                                      //style: Theme.of(context).textTheme.bodyText1,	
                                    ),	
                                    const SizedBox(	
                                      width: 24,	
                                    ),	
                                    DropdownButton<String>(	
                                      borderRadius: BorderRadius.circular(5),	
                                      dropdownColor: Colors.white,	
                                      value: _chosenValue,	
                                      style: const TextStyle(	
                                          //fontSize: 18,	
                                          //fontWeight: FontWeight.w400,	
                                          color: Colors.black),	
                                      items: _years	
                                          .map((e) => DropdownMenuItem(	
                                                child: Text(e),	
                                                value: e,	
                                              ))	
                                          .toList(),	
                                      hint: const Text(	
                                        "Please select a value",	
                                        //style: Theme.of(context).textTheme.bodyText1,	
                                      ),	
                                      onChanged: (value) {	
                                        setState(() {	
                                          _isKeySelected = true;	
                                          _chosenValue = value.toString();	
                                        });	
                                      },	
                                    ),	
                                  ],	
                                ),	
                              ),	
                            ),	
                            const SizedBox(	
                              height: 20,	
                      ), 	
                      _isKeySelected 	
                          ? FutureBuilder<ErpInventorySum>( 	
                              future: ErpInventorySumService 	
                                      .ErpInventorySumQuery(getEmIntStr(_chosenValue)) 	
                                  .then((value) => value), 	
                              builder: (context, snapshot) { 	
                                switch (snapshot.connectionState) { 	
                                  case ConnectionState.waiting: 	
                                    return const Center( 	
                                        child: CircularProgressIndicator()); 	
                                  default: 	
                                    if (snapshot.hasError) { 	
                                      return const Center( 	
                                          child: Text('Record not found, Select Valid Key Value')); 	
                                    } else { 	
                                      return ErpInventorySumEditDdRec( 	
                                          erpInventorySum: snapshot.data!); 	
                                    } 	
                                } 	
                              }) 	
                          : const SizedBox( 	
                              height: 0, 	
                            ) 	
                    ], 	
                  ), 	
                ), 	
               ),	
             ],	
           ),	
        )); 	
  } 	
} 
 
class ErpInventorySumEditDdRec extends StatefulWidget { 
  final ErpInventorySum erpInventorySum; 
  const ErpInventorySumEditDdRec({Key? key, required this.erpInventorySum}) : super(key: key); 
 
  @override 
  _ErpInventorySumEditDdRecState createState() => _ErpInventorySumEditDdRecState(); 
} 
 
class _ErpInventorySumEditDdRecState extends State<ErpInventorySumEditDdRec> { 
  ErpInventorySum foundErpInventorySum = ErpInventorySum(year: 0 ); 
 
 
  double emFormHeight  = emFormFixedHeight;  
  double emFormWidth  = emFormFixedWidth;  
 
  static final formKey = GlobalKey<FormState>(); 
		String yearVar = ""; 
		String? monthVar = ""; 
		String? totalQtyVar = ""; 
 
 
 
 
@override 
void didChangeDependencies() { 
    // MediaQuery.of(context) 
      emFormWidth =  getEmFormWidth(context); 
      emFormHeight = getEmFormHeight(context); 
      //print("Width | Height " + emFormWidth.toString() + " | " + emFormHeight.toString()); 
    super.didChangeDependencies(); 
} 
 
 
  @override 
  void initState() { 
    super.initState(); 
    setState(() { 
      foundErpInventorySum = widget.erpInventorySum; 
    }); 
  } 
 
 
  @override 
  Widget build(BuildContext context) { 
    return SingleChildScrollView( 
 
          child: Container( 
            padding: const EdgeInsets.only(top: 8.0), 
            decoration: const BoxDecoration(boxShadow: [ 
              BoxShadow( 
                color: Colors.white, 
              ), 
            ], borderRadius: BorderRadius.all(Radius.circular(10.0))), 
			  width: emFormWidth, //getEmFormWidth(context), 
	          height: emFormHeight, //MediaQuery.of(context).size.height, 
   	      //width: MediaQuery.of(context).size.width, 
             //width: 600, 
             //height: 620, 
           child: SingleChildScrollView( 
            child: Form( 
              key: formKey, 
              //autovalidateMode: AutovalidateMode.onUserInteraction, 
 
              child: Padding( 
                padding: const EdgeInsets.all(16.0), 
                child: SingleChildScrollView( 
                  child: Column(  
                children: [ 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [1] [ Name [Year] : EM Type [NUMBER], Java Type [long]  
				  //                  EM size: maxlength: 10, Display Size : 10 
				  // Flutter Details: Field Label [Year], Name [year], Type [int]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					   enabled: false,    initialValue: getEmStrOpt(foundErpInventorySum.year.toString()),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(10), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Year', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 10, Display Size : 10 
					//for display width , adjust parent available space  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  if (!_isNumeric(value)) { 
						return ' | Enter a valid Numeric value'; } 
					  return null;  
					}, 
					//maxLength: 30, 
					onSaved: (value) => setState(() => yearVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [2] [ Name [Month] : EM Type [NUMBER], Java Type [long]  
				  //                  EM size: maxlength: 10, Display Size : 10 
				  // Flutter Details: Field Label [Month], Name [month], Type [int]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundErpInventorySum.month.toString()),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(10), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Month', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 10, Display Size : 10 
					//for display width , adjust parent available space  
					validator: (value) { 
					  if (value!.isEmpty) {  
						//not mandatory - no numeric chk  
					  } else {  
					  	if (!_isNumeric(value)) { 
							return 'Enter a valid Numeric value'; } 
					  }  
					  return null;  
					}, 
					//maxLength: 30, 
					onSaved: (value) => setState(() => monthVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [3] [ Name [Totalqty] : EM Type [FLOAT], Java Type [float]  
				  //                  EM size: maxlength: 15, Display Size : 15 
				  // Flutter Details: Field Label [Total Qty], Name [totalQty], Type [double]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundErpInventorySum.totalQty.toString()),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(15), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Total Qty', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 15, Display Size : 15 
					//for display width , adjust parent available space  
					validator: (value) { 
					  if (value!.isEmpty) {  
						//not mandatory - no numeric chk  
					  } else {  
					  	if (!_isNumeric(value)) { 
							return 'Enter a valid Numeric value'; } 
					  }  
					  return null;  
					}, 
					//maxLength: 30, 
					onSaved: (value) => setState(() => totalQtyVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
                  const SizedBox(height: 20,), 
                  Builder( 
                    builder: (context) => ButtonWidget( 
                      text: 'Submit', 
                      onClicked: () { 
                        final isValid = formKey.currentState!.validate(); 
                        // FocusScope.of(context).unfocus(); 
 
                        if (isValid) { 
                          formKey.currentState!.save(); 
 
                          //Calling the post method. 
 
                          ErpInventorySum newErpInventorySum = ErpInventorySum( 
					   year: getEmIntStr(yearVar) , 
					   month: getEmIntStrOpt(monthVar) , 
					   totalQty: getEmDoubleStrOpt(totalQtyVar) , 
							  ); 
 
                          ErpInventorySumService.ErpInventorySumEdit( 
                                  newErpInventorySum.year, 
                                  newErpInventorySum) 
                              .then((message) { 
                                    message == "Record Updated Successfully" 
                                        ? null	
                                        : showDialog(	
                                            context: context,	
                                            builder: (ctx) => AlertDialog(	
                                              title: const Text("Error Status"),	
                                              content: Text(message),	
                                              actions: <Widget>[	
                                                ElevatedButton(	
                                                  onPressed: () {	
                                                    Navigator.of(ctx).pop();	
                                                  },	
                                                  child: const Text("OK"),	
                                                ),	
                                              ],	
                                            ),	
                                          );	
	
                            final snackBar = SnackBar( 
                              padding: const EdgeInsets.symmetric( 
                                  horizontal: 50, vertical: 8), 
                              content: Text( 
                                message, 
                                style: Theme.of(context).textTheme.headline5, 
                              ), 
                              backgroundColor: 
                                  message == "Record Updated Successfully" 
                                      ? Colors.green 
                                      : Colors.redAccent, 
                            ); 
                            ScaffoldMessenger.of(context) 
                                .showSnackBar(snackBar); 
                          }); 
                        } 
                      }, 
                    ), 
                  ) 
                ], 
              ), 
            ), 
          ), 
          ), 
          ), 
          ), 
      ); 
  } 
} 
 
 
bool _isNumeric(String s) { 
  // ignore: unnecessary_null_comparison 
  if (s == null) { 
    return false; 
  } 
  return double.tryParse(s) != null; 
} 
 
class ButtonWidget extends StatelessWidget { 
  final String text; 
  final VoidCallback onClicked; 
 
  const ButtonWidget({ 
    required this.text, 
    required this.onClicked, 
    Key? key, 
  }) : super(key: key); 
 
  @override 
  Widget build(BuildContext context) => ElevatedButton( 
        child: Text( 
          text, 
          style: const TextStyle(fontSize: 24, color: Colors.white), 
        ), 
        style: ButtonStyle( 
            backgroundColor: MaterialStateProperty.all<Color>( 
                Theme.of(context).primaryColor), 
            minimumSize: MaterialStateProperty.all(const Size(300, 40)),  
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>( 
                const EdgeInsets.symmetric(horizontal: 2.0, vertical: 16.0))), 
        onPressed: onClicked, 
      ); 
} 
 
 
