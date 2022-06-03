import 'package:flutter/material.dart'; 
import 'package:intl/intl.dart';  
 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/erptblkeydate/erptblkeydate_model.dart'; 
import 'package:em_app/pages/erptblkeydate/erptblkeydate_service.dart'; 
import 'package:em_app/pages/erptblkeydate/erptblkeydate_lib.dart'; 
 
class ErpTblkeydateEditDd extends StatefulWidget { 
  //need 1st record column and type also 
  final String dateofinquirySelected; 
  const ErpTblkeydateEditDd({Key? key, required this.dateofinquirySelected}) : super(key: key); 
 
  @override 
  _ErpTblkeydateEditDdState createState() => _ErpTblkeydateEditDdState(); 
} 
 
class _ErpTblkeydateEditDdState extends State<ErpTblkeydateEditDd> { 
 
  String errorMsg = timeErrStr; 
 
  bool _loading = false; 	
  bool _isKeySelected = false; 	
  //double fullFormHeight = 700; 	
 	
  List<String> _dateofinquirys = ["Select A Key Value"]; 	
  String _chosenValue = "Select A Key Value"; 	
	
  @override	
  void initState() {	
    super.initState();	
	
    _chosenValue = widget.dateofinquirySelected.toString();	
    _loading = true;	
	
    ErpTblkeydateService.ErpTblkeydateViewAllIds().then((ids) { 	
      if (ids is String) {	
        setState(() {	
          errorMsg = ids;	
        });	
      }	
      setState(() { 	
        _dateofinquirys = ids; 	
        _dateofinquirys.insert(0, "Select A Key Value");	
		 //Remove duplicates 	
        _dateofinquirys = _dateofinquirys.toSet().toList();	
        _loading = false;	
      });	
    });	
  } 	
 	
  @override 	
  Widget build(BuildContext context) { 	
    return Scaffold( 	
	     backgroundColor: Colors.blue.shade200,	
        appBar: AppBar( 	
          title: const Text("ErpTblkeydate Edit Dd Form"), 	
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
                                      items: _dateofinquirys	
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
                          ? FutureBuilder<ErpTblkeydate>( 	
                              future: ErpTblkeydateService 	
                                      .ErpTblkeydateQuery(_chosenValue) 	
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
                                      return ErpTblkeydateEditDdRec( 	
                                          erpTblkeydate: snapshot.data!); 	
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
 
class ErpTblkeydateEditDdRec extends StatefulWidget { 
  final ErpTblkeydate erpTblkeydate; 
  const ErpTblkeydateEditDdRec({Key? key, required this.erpTblkeydate}) : super(key: key); 
 
  @override 
  _ErpTblkeydateEditDdRecState createState() => _ErpTblkeydateEditDdRecState(); 
} 
 
class _ErpTblkeydateEditDdRecState extends State<ErpTblkeydateEditDdRec> { 
  ErpTblkeydate foundErpTblkeydate = ErpTblkeydate(dateofinquiry: "" ); 
 
 
  double emFormHeight  = emFormFixedHeight;  
  double emFormWidth  = emFormFixedWidth;  
 
  static final formKey = GlobalKey<FormState>(); 
		String dateofinquiryVar = ""; 
		String? requestedqtyVar = ""; 
		String? reqquoteamtVar = ""; 
		String? meetingpreftimeVar = ""; 
		String? createdVar = ""; 
		String? updatedVar = ""; 
 
 
	DateTime selectedDate1 = DateTime.now();		
	TextEditingController _textEditingController1 = TextEditingController();	
		
	_selectDate1(BuildContext context) async {		
		final DateTime? selected1 = await showDatePicker(		
		  context: context,		
		  initialDate: selectedDate1,		
		  firstDate: DateTime(1900),		
		  lastDate: DateTime(2100),		
		);		
		
		if (selected1 != null && selected1 != selectedDate1)	{	
		  setState(() {		
			selectedDate1 = selected1;		
			_textEditingController1.text = DateFormat(emDateFmt).format(selectedDate1);		
		  });		
	  	}		
	  }		
 	
	DateTime selectedTime4 = DateTime.now();		
	TextEditingController _textEditingController4 = TextEditingController();	
		
	  _selectTime4(BuildContext context) async {		
		  final TimeOfDay? timeOfDay4 = await showTimePicker(		
			context: context,		
			initialTime: TimeOfDay.fromDateTime(selectedTime4),		
			initialEntryMode: TimePickerEntryMode.dial,		
		  );		
 	
		  if(timeOfDay4 != null)		
			{		
			  setState(() {		
				//Flutter TimePicker only supports hour , minute (No seconds or milliseconds or timezone)	
				final now1 = DateTime.now();	
				selectedTime4 = DateTime(now1.year, now1.month, now1.day, timeOfDay4.hour, timeOfDay4.minute);	
				//selectedTime4.toString();	
				_textEditingController4.text = DateFormat(emTimeFmt).format(selectedTime4);		
				//print(_textEditingController4.text)	;	
			  });		
			}		
	  }		
 	
 
 
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
      foundErpTblkeydate = widget.erpTblkeydate; 
			      _textEditingController1.text = getEmStrOpt(foundErpTblkeydate.dateofinquiry); 
			      _textEditingController4.text = getEmStrOpt(foundErpTblkeydate.meetingpreftime); 
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
				  // Column Details:  Srl No : [1] [ Name [DateOfInquiry] : EM Type [DATE], Java Type [Calendar]  
				  //                  EM size: maxlength: 10, Display Size : 10 
				  // Flutter Details: Field Label [Dateofinquiry], Name [dateofinquiry], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
				controller: _textEditingController1,  
					   enabled: false,  //IS-PICKER  initialValue: getEmStrOpt(foundErpTblkeydate.dateofinquiry),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(10), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Dateofinquiry', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 10, Display Size : 10 
					//for display width , adjust parent available space  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  return null;  
					}, 
					//maxLength: 30, 
					onSaved: (value) => setState(() => dateofinquiryVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				    //Date Picker For [dateofinquiry], [DateOfInquiry] 
				    IconButton(	
				        onPressed: () {	
				          _selectDate1(context);	
				        },	
				        icon: Icon(Icons.calendar_today, color: Colors.grey,)	
					 ),	
				    Align(	
				      child: SizedBox(	
				        width: 200,	
				        //height: 50,	
				        child: 	
				       Text("${selectedDate1.day}/${selectedDate1.month}/${selectedDate1.year}"),	
				      ),	
				    ),	
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [2] [ Name [RequestedQty] : EM Type [NUMBER], Java Type [long]  
				  //                  EM size: maxlength: 10, Display Size : 10 
				  // Flutter Details: Field Label [Requestedqty], Name [requestedqty], Type [int]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundErpTblkeydate.requestedqty.toString()),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(10), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Requestedqty', 
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
					onSaved: (value) => setState(() => requestedqtyVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [3] [ Name [ReqQuoteAmt] : EM Type [FLOAT], Java Type [float]  
				  //                  EM size: maxlength: 15, Display Size : 15 
				  // Flutter Details: Field Label [Reqquoteamt], Name [reqquoteamt], Type [double]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundErpTblkeydate.reqquoteamt.toString()),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(15), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Reqquoteamt', 
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
					onSaved: (value) => setState(() => reqquoteamtVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [4] [ Name [MeetingPrefTime] : EM Type [TIME], Java Type [Calendar]  
				  //                  EM size: maxlength: 8, Display Size : 8 
				  // Flutter Details: Field Label [Meetingpreftime], Name [meetingpreftime], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
				controller: _textEditingController4,  
					    //IS-PICKER  initialValue: getEmStrOpt(foundErpTblkeydate.meetingpreftime),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(8), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Meetingpreftime', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 8, Display Size : 8 
					//for display width , adjust parent available space  
					/*  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  if (!_isNumeric(value)) { 
						return ' | Enter a valid Numeric value'; } 
					  return null;  
					}, 
					*/  
					//maxLength: 30, 
					onSaved: (value) => setState(() => meetingpreftimeVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				    //Time Picker For [meetingpreftime], [MeetingPrefTime] 
				    IconButton(	
				        onPressed: () {	
				          _selectTime4(context);	
				        },	
				        icon: Icon(Icons.more_time, color: Colors.grey,)	
					 ),	
				    Align(	
				      child: SizedBox(	
				        width: 200,	
				        //height: 50,	
				        child: 	
				       Text("${selectedTime4.hour}:${selectedTime4.minute}"),	
				      ),	
				    ),	
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [5] [ Name [Created] : EM Type [DATETIME], Java Type [Calendar]  
				  //                  EM size: maxlength: 19, Display Size : 19 
				  // Flutter Details: Field Label [Created], Name [created], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundErpTblkeydate.created),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(19), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Created', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 19, Display Size : 19 
					//for display width , adjust parent available space  
					/*  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  if (!_isNumeric(value)) { 
						return ' | Enter a valid Numeric value'; } 
					  return null;  
					}, 
					*/  
					//maxLength: 30, 
					onSaved: (value) => setState(() => createdVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [6] [ Name [Updated] : EM Type [DATETIME], Java Type [Calendar]  
				  //                  EM size: maxlength: 19, Display Size : 19 
				  // Flutter Details: Field Label [Updated], Name [updated], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundErpTblkeydate.updated),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(19), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Updated', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 19, Display Size : 19 
					//for display width , adjust parent available space  
					/*  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  if (!_isNumeric(value)) { 
						return ' | Enter a valid Numeric value'; } 
					  return null;  
					}, 
					*/  
					//maxLength: 30, 
					onSaved: (value) => setState(() => updatedVar = value.toString()), 
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
 
                          ErpTblkeydate newErpTblkeydate = ErpTblkeydate( 
					   dateofinquiry: dateofinquiryVar , 
					   requestedqty: getEmIntStrOpt(requestedqtyVar) , 
					   reqquoteamt: getEmDoubleStrOpt(reqquoteamtVar) , 
					   meetingpreftime: meetingpreftimeVar , 
					   created: createdVar , 
					   updated: updatedVar , 
							  ); 
 
                          ErpTblkeydateService.ErpTblkeydateEdit( 
                                  newErpTblkeydate.dateofinquiry, 
                                  newErpTblkeydate) 
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
 
 
